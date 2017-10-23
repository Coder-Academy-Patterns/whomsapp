module ApplicationHelper
  EMOJI_CODES_TABLE = {
    ':smiley:' => '😃',
    ':sleeping:' => '😴',
    ':joy:' => '😂',
    ':star:' => '⭐️',
    ':dog:' => '🐶',
    ':monkey_face:' => '🐵'
  }

  def format_emoji_codes(input)
    # Doesn’t handle when code is not valid
    # input.gsub(/:[a-z_]+:/, EMOJI_CODES_TABLE)
    
    # Does handle when code is not valid
    input.gsub(/:[a-z_]+:/) do |match|
      EMOJI_CODES_TABLE.fetch(match, match)
    end
  end
end
