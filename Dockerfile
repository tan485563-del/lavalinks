# Copy in our config (plugins, youtube oauth, lavasrc, etc.)
COPY application.yml /opt/Lavalink/application.yml
 
EXPOSE 8080
 
# Lavalink reads LAVALINK_PASSWORD, SPOTIFY_CLIENT_ID, SPOTIFY_CLIENT_SECRET
# from environment variables via the ${...} placeholders in application.yml.
ENTRYPOINT ["java", "-jar", "Lavalink.jar"]
