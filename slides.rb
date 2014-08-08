require 'yaml'

speakers = YAML::load(File.open('data/speakers.yml'))['all']

presentation do

  slide('title')

  speakers.each.with_index do |speaker, i|

    slide('speaker',
          name: speaker['name'],
          description: speaker['description'],
          image: speaker['image'],
          twitter: speaker['twitter'])

    slide('session_title',
          session: speaker['session'])

    slide('session_details',
          details: speaker['session_details'])
  end
end
