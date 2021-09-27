require "test_helper"

class QetquotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qetquote = qetquotes(:one)
  end

  test "should get index" do
    get qetquotes_url
    assert_response :success
  end

  test "should get new" do
    get new_qetquote_url
    assert_response :success
  end

  test "should create qetquote" do
    assert_difference('Qetquote.count') do
      post qetquotes_url, params: { qetquote: { address: @qetquote.address, bathrooms: @qetquote.bathrooms, beds: @qetquote.beds, birthdate: @qetquote.birthdate, comparing: @qetquote.comparing, condo: @qetquote.condo, coop: @qetquote.coop, creditscore: @qetquote.creditscore, currentinscomp: @qetquote.currentinscomp, currentrate: @qetquote.currentrate, deciding: @qetquote.deciding, dogs: @qetquote.dogs, duplex: @qetquote.duplex, firstname: @qetquote.firstname, foundation: @qetquote.foundation, frame: @qetquote.frame, gender: @qetquote.gender, heating: @qetquote.heating, homedesign: @qetquote.homedesign, homeforbiz: @qetquote.homeforbiz, homeyear: @qetquote.homeyear, income: @qetquote.income, lastname: @qetquote.lastname, manufacturedhome: @qetquote.manufacturedhome, married: @qetquote.married, material: @qetquote.material, mobilehome: @qetquote.mobilehome, numstories: @qetquote.numstories, occupation: @qetquote.occupation, other: @qetquote.other, overthreeyears: @qetquote.overthreeyears, ownhome: @qetquote.ownhome, pool: @qetquote.pool, primaryres: @qetquote.primaryres, ready: @qetquote.ready, rentout: @qetquote.rentout, roof: @qetquote.roof, singlefam: @qetquote.singlefam, sqft: @qetquote.sqft, threetofour: @qetquote.threetofour, tramp: @qetquote.tramp, zip: @qetquote.zip } }
    end

    assert_redirected_to qetquote_url(Qetquote.last)
  end

  test "should show qetquote" do
    get qetquote_url(@qetquote)
    assert_response :success
  end

  test "should get edit" do
    get edit_qetquote_url(@qetquote)
    assert_response :success
  end

  test "should update qetquote" do
    patch qetquote_url(@qetquote), params: { qetquote: { address: @qetquote.address, bathrooms: @qetquote.bathrooms, beds: @qetquote.beds, birthdate: @qetquote.birthdate, comparing: @qetquote.comparing, condo: @qetquote.condo, coop: @qetquote.coop, creditscore: @qetquote.creditscore, currentinscomp: @qetquote.currentinscomp, currentrate: @qetquote.currentrate, deciding: @qetquote.deciding, dogs: @qetquote.dogs, duplex: @qetquote.duplex, firstname: @qetquote.firstname, foundation: @qetquote.foundation, frame: @qetquote.frame, gender: @qetquote.gender, heating: @qetquote.heating, homedesign: @qetquote.homedesign, homeforbiz: @qetquote.homeforbiz, homeyear: @qetquote.homeyear, income: @qetquote.income, lastname: @qetquote.lastname, manufacturedhome: @qetquote.manufacturedhome, married: @qetquote.married, material: @qetquote.material, mobilehome: @qetquote.mobilehome, numstories: @qetquote.numstories, occupation: @qetquote.occupation, other: @qetquote.other, overthreeyears: @qetquote.overthreeyears, ownhome: @qetquote.ownhome, pool: @qetquote.pool, primaryres: @qetquote.primaryres, ready: @qetquote.ready, rentout: @qetquote.rentout, roof: @qetquote.roof, singlefam: @qetquote.singlefam, sqft: @qetquote.sqft, threetofour: @qetquote.threetofour, tramp: @qetquote.tramp, zip: @qetquote.zip } }
    assert_redirected_to qetquote_url(@qetquote)
  end

  test "should destroy qetquote" do
    assert_difference('Qetquote.count', -1) do
      delete qetquote_url(@qetquote)
    end

    assert_redirected_to qetquotes_url
  end
end
