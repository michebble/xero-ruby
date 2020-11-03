=begin
#Xero Payroll UK

#This is the Xero Payroll API for orgs in the UK region.

The version of the OpenAPI document: 2.4.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollUk
  require 'bigdecimal'

  class EmployeeTax
    # The Starter type.
    attr_accessor :starter_type
    
    # Starter declaration.
    attr_accessor :starter_declaration
    
    # The Tax code.
    attr_accessor :tax_code
    
    # Describes whether the tax settings is W1M1
    attr_accessor :w1_m1
    
    # The previous taxable pay
    attr_accessor :previous_taxable_pay
    
    # The tax amount previously paid
    attr_accessor :previous_tax_paid
    
    # The employee's student loan deduction type
    attr_accessor :student_loan_deduction
    
    # Describes whether the employee has post graduate loans
    attr_accessor :has_post_graduate_loans
    
    # Describes whether the employee is director
    attr_accessor :is_director
    
    # The directorship start date
    attr_accessor :directorship_start_date
    
    # NICs calculation method
    attr_accessor :nic_calculation_method
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'starter_type' => :'starterType',
        :'starter_declaration' => :'starterDeclaration',
        :'tax_code' => :'taxCode',
        :'w1_m1' => :'w1M1',
        :'previous_taxable_pay' => :'previousTaxablePay',
        :'previous_tax_paid' => :'previousTaxPaid',
        :'student_loan_deduction' => :'studentLoanDeduction',
        :'has_post_graduate_loans' => :'hasPostGraduateLoans',
        :'is_director' => :'isDirector',
        :'directorship_start_date' => :'directorshipStartDate',
        :'nic_calculation_method' => :'nicCalculationMethod'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'starter_type' => :'String',
        :'starter_declaration' => :'String',
        :'tax_code' => :'String',
        :'w1_m1' => :'Boolean',
        :'previous_taxable_pay' => :'BigDecimal',
        :'previous_tax_paid' => :'BigDecimal',
        :'student_loan_deduction' => :'String',
        :'has_post_graduate_loans' => :'Boolean',
        :'is_director' => :'Boolean',
        :'directorship_start_date' => :'Date',
        :'nic_calculation_method' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollUk::EmployeeTax` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollUk::EmployeeTax`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'starter_type')
        self.starter_type = attributes[:'starter_type']
      end

      if attributes.key?(:'starter_declaration')
        self.starter_declaration = attributes[:'starter_declaration']
      end

      if attributes.key?(:'tax_code')
        self.tax_code = attributes[:'tax_code']
      end

      if attributes.key?(:'w1_m1')
        self.w1_m1 = attributes[:'w1_m1']
      end

      if attributes.key?(:'previous_taxable_pay')
        self.previous_taxable_pay = attributes[:'previous_taxable_pay']
      end

      if attributes.key?(:'previous_tax_paid')
        self.previous_tax_paid = attributes[:'previous_tax_paid']
      end

      if attributes.key?(:'student_loan_deduction')
        self.student_loan_deduction = attributes[:'student_loan_deduction']
      end

      if attributes.key?(:'has_post_graduate_loans')
        self.has_post_graduate_loans = attributes[:'has_post_graduate_loans']
      end

      if attributes.key?(:'is_director')
        self.is_director = attributes[:'is_director']
      end

      if attributes.key?(:'directorship_start_date')
        self.directorship_start_date = attributes[:'directorship_start_date']
      end

      if attributes.key?(:'nic_calculation_method')
        self.nic_calculation_method = attributes[:'nic_calculation_method']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          starter_type == o.starter_type &&
          starter_declaration == o.starter_declaration &&
          tax_code == o.tax_code &&
          w1_m1 == o.w1_m1 &&
          previous_taxable_pay == o.previous_taxable_pay &&
          previous_tax_paid == o.previous_tax_paid &&
          student_loan_deduction == o.student_loan_deduction &&
          has_post_graduate_loans == o.has_post_graduate_loans &&
          is_director == o.is_director &&
          directorship_start_date == o.directorship_start_date &&
          nic_calculation_method == o.nic_calculation_method
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [starter_type, starter_declaration, tax_code, w1_m1, previous_taxable_pay, previous_tax_paid, student_loan_deduction, has_post_graduate_loans, is_director, directorship_start_date, nic_calculation_method].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby::PayrollUk.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).strftime('%Y-%m-%dT%l:%M:%S%z').to_s
    end
  end
end