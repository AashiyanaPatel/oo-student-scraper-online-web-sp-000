class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url, :scraper

  @@all = []

  def initialize(student_hash)
    
    @name = student_hash[:name]
    @location = student_hash[:location]
    student_hash = self
    @@all << self

  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      student = self.new(student)
    end

  end

  def add_student_attributes(attributes_hash)
  
    @twitter = attributes_hash[:twitter]
    @linkedin = attributes_hash[:linkedin]
    @github = attributes_hash[:github]
    @blog = attributes_hash[:blog]
    @profile_quote = attributes_hash[:profile_quote]
    @bio = attributes_hash[:bio]
  end

  def self.all
    @@all
  end
end