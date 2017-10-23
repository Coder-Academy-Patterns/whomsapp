module ApplicationHelper
  def format_emoji_codes(input)
    # Find all emoji-code-like things
    input.gsub(/:[a-z_]+:/) do |match|
      # Trim the leading and trailing colons
      emoji_name = match[1..-2]
      # Use the gemoji gem to find the matching emoji
      emoji = Emoji.find_by_alias(emoji_name)
      # If an emoji was found, return its unicode string
      # otherwise leave the matching string untouched
      emoji ? emoji.raw : match
    end
  end
end
