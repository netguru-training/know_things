namespace :allegro do
  desc "Fetch categories from allegro"
  task fetch_categories: :environment do
    client = Savon.client(wsdl: "https://webapi.allegro.pl/service.php?wsdl")
    response = client.call(:do_query_sys_status,
                           message: { sysvar: 3,
                                     countryId: 1,
                                     webapiKey: "5e8d4447" } )
    ver_key = response.body[:do_query_sys_status_response][:ver_key]
    client.call(:do_login_enc, message: {
                                userLogin: 'konto-andrzeja',
                                userHashPassword: 'L2YkaBmlI27GAar+dSSyKeWAyRYx8DkPTjhZO9ACTyI=',
                                countryCode: 1,
                                webapiKey: '5e8d4447',
                                localVersion: ver_key } )

    categories_response = client.call(:do_get_cats_data, message: {
                                                  countryId: 1,
                                                  localVersion: 0,
                                                  webapiKey: '5e8d4447' } )

    categories = []
    categories_response.body[:do_get_cats_data_response][:cats_list][:item].each do |category|
      categories << Category.new(
          :id => category[:cat_id],
          :parent_id => category[:cat_parent],
          :name => category[:cat_name])
    end
    Category.import categories
  end

end
