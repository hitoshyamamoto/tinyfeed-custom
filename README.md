# Tinyfeed Custom RSS Reader

This project uses [Tinyfeed](https://github.com/AnandChowdhary/tinyfeed) (MIT-licensed) to create a custom RSS feed reader that automatically updates and deploys to GitHub Pages.

## Features

- Automatically fetches and updates RSS feeds every 6 hours
- Shows the last 30 days of content
- Deploys to GitHub Pages automatically
- Zero server costs (runs on GitHub Actions)
- Curated collection of AI and Technology news feeds

## Feed Categories

The project includes feeds from various categories:

### Major LLM Providers
- Anthropic News and Engineering
- OpenAI Blog
- LangChain Blog
- AWS News
- ByteByteGo Blog

### Additional LLM Providers and AI News
- Google AI Blog
- Microsoft AI Blog
- Meta AI Research
- NVIDIA AI Blog
- Hugging Face Blog
- Cohere Blog
- Stability AI Blog

### AI Research and News
- arXiv AI Papers
- MIT Technology Review - AI
- AI Trends
- DeepMind Blog
- AI Alignment

## Resource Usage

This project runs on GitHub Actions Free Tier, which includes:
- 2,000 minutes per month for public repositories
- 500 minutes per month for private repositories
- 20 concurrent jobs

Current usage (approximate):
- Runs every 6 hours (4 times per day)
- Each run takes ~1-2 minutes
- Monthly usage: ~120-240 minutes (6-12% of free tier)

## Setup

1. Add your RSS feeds to `feeds.txt` (one feed URL per line)
2. Enable GitHub Pages in your repository settings
3. The site will be automatically built and deployed

## Local Usage

You can run Tinyfeed locally to test or use it without GitHub Actions:

1. Make the script executable:
   ```bash
   chmod +x run-tinyfeed.sh
   ```

2. Run the script:
   ```bash
   ./run-tinyfeed.sh
   ```

3. Open `public/index.html` in your browser to view the feed reader.

The script will:
- Download Tinyfeed if not present
- Create the necessary directories
- Generate the feed reader with your current feeds.txt
- Show the last 30 days of content

## Project Structure

```
.
├── feeds.txt           # List of RSS feed URLs
├── public/            # Generated static files
│   └── index.html    # The feed reader webpage
├── run-tinyfeed.sh   # Script to run Tinyfeed locally
└── README.md         # This file
```

## Adding New Feeds

To add new feeds:
1. Open `feeds.txt`
2. Add the feed URL on a new line
3. Optionally add a comment to categorize the feed
4. Run the script to update the feed reader

## License

This project uses Tinyfeed which is licensed under the MIT License.
© Original authors — see LICENSE. 