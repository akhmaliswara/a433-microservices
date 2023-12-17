# Use base image node v.14
FROM node:14
# Determine working directory
WORKDIR /app
# Copy dependencies
COPY package*.json .
# Install for production
RUN npm install --production
# Copy all files
COPY package*.json .
# Expose port
EXPOSE 3001
# Set environment
ENV PORT=3001 AMQP_URL=amqp://localhost:5672
# Run server
CMD ["npm", "start"]