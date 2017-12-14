class Pressing < ApplicationRecord
     include AlgoliaSearch
     #Pressing.reindex
      algoliasearch index_name: "set", force_utf8_encoding: true do
    
    # list of attribute used to build an Algolia record
    attributes :geozip, :geocity, :chemiseapartirde, :prestations, :clients
    
     # the `searchableAttributes` (formerly known as attributesToIndex) setting defines the attributes
    # you want to search in: here `title`, `subtitle` & `description`.
    # You need to list them by order of importance. `description` is tagged as
    # `unordered` to avoid taking the position of a match into account in that attribute.
    searchableAttributes ['geozip', 'geocity', 'chemiseapartirde', 'prestations', 'clients', 'unordered(prestations)']

    # the `customRanking` setting defines the ranking criteria use to compare two matching
    # records in case their text-relevance is equal. It should reflect your record popularity.
    customRanking ['desc(chemiseapartirde)']
    # default search parameters stored in the index settings
    
    minWordSizefor1Typo 4
    minWordSizefor2Typos 8
    hitsPerPage 50
    
    # specify the list of attributes available for faceting
    attributesForFaceting [:region, :geozip ]
  end
end
