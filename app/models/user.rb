class User < ActiveRecord::Base
     attr_accessible :age, :first_name, :address,
                     :last_name, :gender, :hobby1, :hobby2,
                     :hobby3, :description, :email, :accept, :full_name

     attr_accessor :first_name, :last_name
=begin
     #validates :first_name, :presence => true, :length => {:maximum => 4},
      #         :format => {:with => /[^A-Z]/, :message => "should contain only smallcase"} 
     #compulsory field
     validates :first_name, :presence => true
     validates :last_name, :presence => {:message => "is mandatory"}

     validates :first_name, :length => {:in => (6..10), :too_long => "too.... long", :unless => Proc.new{|p| p.first_name.nil?}}

     validates :gender, :inclusion => ['m', 'f']
     validates :age, :exclusion => {:in => (0..17), :message => "should be an adult"}
     validates :email, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/} 
   validates :first_name, :format => {:without => /[^A-Za-z0-9]/} 
    
#   validates :age, :numericality => true

   validates :age, :numericality => {:unless => Proc.new{|p| p.blank?}}

   validates :first_name, :uniqueness => true
=end


   before_save :bsave
   after_save :asave
   before_create :bcreate
   after_create :acreate
   before_validation :bvalidation
   after_validation :avalidation
   before_destroy :bdestroy
   after_destroy :adestroy
   after_commit :acommit

   def bsave
     puts "----------------BEFORE SAVE--------------------------------"
     self.full_name = self.first_name + " " + self.last_name
   end

   def asave
     puts "----------------AFTER SAVE--------------------------------"     
   end

   def bcreate
     puts "----------------BEFORE CREATE--------------------------------"
   end

   def acreate
     puts "----------------AFTER CREATE--------------------------------"
   end

   def bvalidation
     puts "----------------BEFORE VALIDATION--------------------------------"
   end

   def avalidation
     puts "----------------AFTER VALIDATION--------------------------------"
   end

   def bdestroy
     puts "----------------BEFORE DESTROY--------------------------------"
   end

   def adestroy
     puts "----------------AFTER DESTROY--------------------------------"
   end

   def acommit
     puts "----------------AFTER COMMIT--------------------------------"
   end


















   
end

 
