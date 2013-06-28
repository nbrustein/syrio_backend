require File.expand_path("../feature")

# has a subject_uri, a feature_type, and an object_uri
# has a default value
# can have any number of updates
class Ferret::Feature::Base
  include ActiveModel::Model
  
  validates_presence_of :subject_uri, :feature_type, :object_uri, :updates
  
end