require 'spec_helper'
require 'rails_helper'
 
describe 'movies/show', :type => :view do
  before(:all) do
    m1 = Movie.create(title: "Ocean's 11", image: "https://content.codecademy.com/courses/learn-rails/img/oceans-11.jpg", release_year: "2001", plot: "Dapper Danny Ocean (George Clooney) is a man of action. Less than 24 hours into his parole from a New Jersey penitentiary, the wry, chari...")    
    a1 = Actor.create(first_name: "George", last_name: "Clooney", image: "https://content.codecademy.com/courses/learn-rails/img/george-clooney.jpg", bio: "George Timothy Clooney is an American actor, writer, producer, director, and activist. He has received three Golden Globe Awards for his ...")
    a2 = Actor.create(first_name: "Matt", last_name: "Damon", image: "https://content.codecademy.com/courses/learn-rails/img/matt-damon.jpg", bio: "Matthew Paige \"Matt\" Damon is an American actor, voice actor, screenwriter, producer, and philanthropist.")
    a3 = Actor.create(first_name: "Brad", last_name: "Pitt", image: "https://content.codecademy.com/courses/learn-rails/img/brad-pitt.jpg", bio: "William Bradley \"Brad\" Pitt is an American actor and producer. He has received a Golden Globe Award, a Screen Actors Guild Award, and thr...")
    a4 = Actor.create(first_name: "Elliot", last_name: "Gould", image: "https://content.codecademy.com/courses/learn-rails/img/elliot-gould.jpg", bio: "Elliott Gould is an American actor. He began acting in Hollywood films during the 1960s, and has remained prolific ever since. ")
    a5 = Actor.create(first_name: "Julia", last_name: "Roberts", image: "https://content.codecademy.com/courses/learn-rails/img/julia-roberts.jpg", bio: "Julia Fiona Roberts is an American actress and producer. She became a Hollywood star after headlining the romantic comedy Pretty Woman, w...")
    m1.actors << [a1, a2, a3, a4, a5]
 
 
    assign(:movie, m1)
    assign(:actors, [a1, a2, a3, a4, a5])
  end
 
  context "Checkpoint 1" do
    it "displays a movie" do
      render
 
      expect(rendered).to include("Ocean"), "Did you display the movie's title?"
    expect(rendered).to include("2001"), "Did you display the movie's release year?"
    
    expect(rendered).to include("George"), "Did you display actor's first name"
    expect(rendered).to include("Clooney"), "Did you display actor's last name"
      
    expect(rendered).to include("Matt"), "Did you display all actor's first name"
    expect(rendered).to include("Damon"), "Did you display all actor's last name"
    end
  end
end
