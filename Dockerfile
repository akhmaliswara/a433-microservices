# Use base image node v.14
FROM node:14
# Determine working directory
WORKDIR /app
# Copy all source code to working directory
COPY . .
# Set environment
ENV NODE_ENV=production DB_HOST=item-db
# Install for production and build apps
RUN npm install --production --unsafe-perm && npm run build
# Run server
CMD ["npm", "start"]
# Expose port
EXPOSE 8080