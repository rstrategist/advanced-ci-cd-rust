# Use the official Rust image as a parent image
FROM rust:1.85 as builder

# Set the working directory in the Docker image
WORKDIR /usr/src/myapp

# Copy the current directory contents into the container at /usr/src/myapp
COPY . .

# Compile the project
RUN cargo build --release

# Start a new stage to create a lean image
FROM debian:buster-slim

# Create the necessary directory for the binary
RUN mkdir -p /usr/local/bin

# Copy the binary from the builder stage to the new production image
COPY --from=builder /usr/src/myapp/target/release/advanced-ci-cd-rust /usr/local/bin/myapp

# Run the binary
CMD ["myapp"]