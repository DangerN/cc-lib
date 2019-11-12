require "json"

module CC
  def self.initialize_dummy_boards
    initialize_board_from_json(%(
    {
    	"id": "fit",
    	"name": "Fitness",
    	"flags": [
    		"sfw"
    	],
    	"threads": [{
    		"id": 43043,
    		"posts": [{
    				"id": 892355720934,
    				"text": "sux fit` butts"
    			},
    			{
    				"id": 892345726937,
    				"text": "fortnite is for casuals"
    			}
    		]
    	}, {
    		"id": 43843,
    		"posts": [{
    				"id": 892345735934,
    				"text": "fit butts"
    			},
    			{
    				"id": 892245720937,
    				"text": "rocknite best"
    			}
    		]
    	}]
    }
    ))
    initialize_board_from_json(%(
    {
    	"id": "ck",
    	"name": "Cooking",
    	"flags": [
    		"sfw"
    	],
    	"threads": [{
    		"id": 43003,
    		"posts": [{
    				"id": 892345720934,
    				"text": "sux butts"
    			},
    			{
    				"id": 892345620937,
    				"text": "no u"
    			}]
    	}]
    }
    ))
    initialize_board_from_json(%(
    {
    	"id": "v",
    	"name": "Video Games",
    	"flags": [
    		"sfw"
    	],
    	"threads": [{
    		"id": 43043,
    		"posts": [{
    				"id": 892325720934,
    				"text": "sux vidya butts"
    			},
    			{
    				"id": 892345720937,
    				"text": "fortnite is for casuals"
    			}
    		]
    	}, {
    		"id": 45043,
    		"posts": [{
    				"id": 892345735934,
    				"text": "vidya butts"
    			},
    			{
    				"id": 892245720937,
    				"text": "fortnite is the best"
    			}
    		]
    	}]
    }
    ))
    initialize_board_from_json(%(
    {
    	"id": "po",
    	"name": "Papercraft and Origami",
    	"flags": [
    		"sfw"
    	],
    	"threads": [{
    		"id": 43043,
    		"posts": [{
    				"id": 892345720934,
    				"text": "sux origami butts"
    			},
    			{
    				"id": 892345720937,
    				"text": "fortnite is for casuals"
    			}
    		]
    	}, {
    		"id": 43045,
    		"posts": [{
    				"id": 892345735934,
    				"text": "origami butts"
    			},
    			{
    				"id": 892245720937,
    				"text": "origami is the best"
    			}
    		]
    	}]
    }
    ))
  end
end
