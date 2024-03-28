# Instagram Telegram Bot

This project aims to create a bot that provides real-time updates on Instagram follower count and view count via Telegram notifications. It consists of Bash scripts running in Termux environment on an Android device.

[![Version](https://img.shields.io/badge/Version-v1.0-red.svg)](https://github.com/craftingeagle/instagram_telegram_bot)
[![Bash Version](https://img.shields.io/badge/Bash-v5.1.0-green.svg)](https://www.gnu.org/software/bash/)
[![JSON](https://img.shields.io/badge/json-v1.7.1-green?logo=json)](https://stedolan.github.io/jq/download/)
[![Termux](https://img.shields.io/badge/Termux-v0.117-1e1f25?style=flat&logo=Termux&logoColor=ffffff)](https://termux.com/)
[![Telegram](https://img.shields.io/badge/Telegram-v8.5.3-2ca5e0?style=flat&logo=Telegram&logoColor=ffffff)](https://telegram.org/)

## Prerequisites

1. **Termux**: Install Termux on your Android device from [Google](https://f-droid.org/en/packages/com.termux/?id=com.termux&hl=en&gl=US).

2. **jq**: Install `jq` for JSON parsing in Termux by running:
    ```bash
    pkg install jq
    ```

3. **Telegram Bot**: Create a Telegram bot using [BotFather](https://core.telegram.org/bots#botfather) and obtain the API token.

4. **Open Telegram BotFather**: BotFather is a special Telegram bot that helps you create and manage other bots. Open Telegram and search for "BotFather" in the search bar. Click on the BotFather profile and start a chat.

5. **Create a New Bot**: Once you're chatting with BotFather, type `/newbot` and follow the instructions. BotFather will ask you for a name for your bot and then a username. The username must end in "bot" and be unique.

6. **Copy Your Bot Token**: After successfully creating the bot, [BotFather](https://core.telegram.org/bots#botfather) will provide you with a token. This token is like a password for your bot and will be used to authenticate your bot when interacting with the Telegram API. Copy this token and keep it secure.

7. **Instagram API Token**: Generate an Instagram API token for accessing your account data.

## Setup

1. Clone this repository:
    ```bash
    git clone https://github.com/your_username/instagram_telegram_bot.git
    cd instagram_telegram_bot
    ```

2. Create the necessary configuration files:
    - Create `config/config.sh` and add your Instagram API token, Telegram bot token, and chat ID:
        ```bash
        # Instagram API token
        INSTAGRAM_TOKEN="your_instagram_token_here"

        # Telegram API token
        TELEGRAM_TOKEN="your_telegram_bot_token_here"

        # Telegram chat ID
        CHAT_ID="your_telegram_chat_id_here"
        ```

3. Set up cron jobs:
    - Use `crontab -e` to edit your cron jobs.
    - Add entries to schedule the execution of `scrape_followers.sh`, `scrape_views.sh`, and `send_notification.sh` scripts at desired intervals. For example:
        ```cron
        */15 * * * * /path/to/instagram_telegram_bot/scripts/scrape_followers.sh
        */15 * * * * /path/to/instagram_telegram_bot/scripts/scrape_views.sh
        */30 * * * * /path/to/instagram_telegram_bot/scripts/send_notification.sh
        ```

## Usage

Follow these steps to use the Instagram Telegram bot:

1. **Start the Bot**: Start the Telegram bot by searching for it in your Telegram app and clicking on "Start". This will initialize the bot and allow it to send you notifications.

2. **Wait for Notifications**: Once the bot is started, wait for notifications to arrive. The bot will send notifications containing updates on your Instagram follower count and view count at regular intervals.

3. **Interact with Notifications**: When you receive a notification, you can view your current follower count and view count directly in the message. If you have any concerns or want to take action based on the information provided, you can do so within the Telegram app.

4. **Manual Execution**: If you want to manually trigger updates or check your counts at any time, you can run the scripts manually from the Termux terminal. Navigate to the `scripts/` directory and execute the desired script:
    ```bash
    cd scripts
    ./scrape_followers.sh
    ```
    This will update the follower count. Similarly, you can run `scrape_views.sh` to update the view count, and `send_notification.sh` to manually send a notification with the latest counts.

5. **Customize Cron Jobs**: If you want to customize the frequency of updates or notifications, you can edit the cron jobs in your Termux environment. Use `crontab -e` to access and modify your cron jobs according to your preferences.

6. **Troubleshooting**: If you encounter any issues or have questions about the bot's functionality, refer to the README.md file for troubleshooting tips or reach out to the project contributors for assistance.

7. **Feedback and Contributions**: Your feedback and contributions are valuable for improving the bot's functionality and reliability. If you have any suggestions, bug reports, or feature requests, feel free to open an issue or submit a pull request on the project's GitHub repository.

8. **Enjoy**: Sit back, relax, and enjoy the convenience of receiving real-time updates on your Instagram metrics directly in your Telegram app!


## Contributing

Contributions are welcome! If you have any suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
