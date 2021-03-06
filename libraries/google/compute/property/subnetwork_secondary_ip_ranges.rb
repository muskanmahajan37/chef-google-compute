# Copyright 2018 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

require 'google/compute/property/array'
module Google
  module Compute
    module Data
      # A class to manage data for SecondaryIpRanges for subnetwork.
      class SubnetworkSecondaryIpRanges
        include Comparable

        attr_reader :range_name
        attr_reader :ip_cidr_range

        def to_json(_arg = nil)
          {
            'rangeName' => range_name,
            'ipCidrRange' => ip_cidr_range
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            range_name: range_name.to_s,
            ip_cidr_range: ip_cidr_range.to_s
          }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? SubnetworkSecondaryIpRanges
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? SubnetworkSecondaryIpRanges
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            result = compare[:self] <=> compare[:other]
            return result unless result.zero?
          end
          0
        end

        def inspect
          to_json
        end

        private

        def compare_fields(other)
          [
            { self: range_name, other: other.range_name },
            { self: ip_cidr_range, other: other.ip_cidr_range }
          ]
        end
      end

      # Manages a SubnetworkSecondaryIpRanges nested object
      # Data is coming from the GCP API
      class SubnetworkSecondaryIpRangesApi < SubnetworkSecondaryIpRanges
        def initialize(args)
          @range_name = Google::Compute::Property::String.api_parse(args['rangeName'])
          @ip_cidr_range = Google::Compute::Property::String.api_parse(args['ipCidrRange'])
        end
      end

      # Manages a SubnetworkSecondaryIpRanges nested object
      # Data is coming from the Chef catalog
      class SubnetworkSecondaryIpRangesCatalog < SubnetworkSecondaryIpRanges
        def initialize(args)
          @range_name = Google::Compute::Property::String.catalog_parse(args[:range_name])
          @ip_cidr_range = Google::Compute::Property::String.catalog_parse(args[:ip_cidr_range])
        end
      end
    end

    module Property
      # A class to manage input to SecondaryIpRanges for subnetwork.
      class SubnetworkSecondaryIpRanges
        def self.coerce
          ->(x) { ::Google::Compute::Property::SubnetworkSecondaryIpRanges.catalog_parse(x) }
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return value if value.is_a? Data::SubnetworkSecondaryIpRanges
          Data::SubnetworkSecondaryIpRangesCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return value if value.is_a? Data::SubnetworkSecondaryIpRanges
          Data::SubnetworkSecondaryIpRangesApi.new(value)
        end
      end

      # A Chef property that holds an integer
      class SubnetworkSecondaryIpRangesArray < Google::Compute::Property::Array
        def self.coerce
          ->(x) { ::Google::Compute::Property::SubnetworkSecondaryIpRangesArray.catalog_parse(x) }
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return SubnetworkSecondaryIpRanges.catalog_parse(value) \
            unless value.is_a?(::Array)
          value.map { |v| SubnetworkSecondaryIpRanges.catalog_parse(v) }
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return SubnetworkSecondaryIpRanges.api_parse(value) \
            unless value.is_a?(::Array)
          value.map { |v| SubnetworkSecondaryIpRanges.api_parse(v) }
        end
      end
    end
  end
end
