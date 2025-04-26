# Azure OpenAI API Migration Guide

This document provides a quick reference guide for using the app after migrating from Ollama to Azure OpenAI API.

## Setup Instructions

1. **Azure OpenAI Resource Setup**:
   - Create an Azure OpenAI resource in the Azure portal
   - Deploy models through the Azure OpenAI Studio
   - Note your deployment names, endpoint URL, and API key

2. **App Configuration**:
   - Open the app and go to Settings
   - Enter your Azure endpoint URL (e.g., https://your-resource.openai.azure.com)
   - Enter your Azure API key
   - Add your deployment names (e.g., gpt-4o, gpt-35-turbo)
   - Mark deployments that support image input (like gpt-4-vision)
   - Select a default deployment

3. **Using the App**:
   - The app interface remains the same
   - Conversations now use Azure OpenAI API instead of Ollama
   - Image support works with compatible Azure deployments

## Troubleshooting

- If you encounter connection issues, verify your endpoint URL and API key
- Ensure your Azure subscription is active and has available quota
- Check that your deployment names match exactly what's in Azure OpenAI Studio

## Migration Notes

- Existing conversations with Ollama models won't automatically work with Azure
- You may need to recreate conversations with Azure models
- The app no longer requires a local Ollama server

## Performance Considerations

- Azure OpenAI API may have different response times than Ollama
- Token usage is subject to your Azure subscription limits
- Image processing capabilities depend on your specific Azure deployments
