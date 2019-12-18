=begin
#Wire4RestAPI

#Referencia de la API de Wire4

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Wire4Client::SpidClassificationDTO
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SpidClassificationDTO' do
  before do
    # run before each test
    @instance = Wire4Client::SpidClassificationDTO.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SpidClassificationDTO' do
    it 'should create an instance of SpidClassificationDTO' do
      expect(@instance).to be_instance_of(Wire4Client::SpidClassificationDTO)
    end
  end
  describe 'test attribute "classification_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end