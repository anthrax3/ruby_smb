# [2.2.41 SMB2 TRANSFORM_HEADER](https://msdn.microsoft.com/en-us/library/hh880787.aspx)
class Smb2::Packet::TransformHeaderRequest < Smb2::Packet
  # The magic header value, always `\xFD\x53\x4d\x42`
  string :magic, 32, default: "\xfdSMB".force_encoding("binary")

  string :signature, (8 * 16)

  string :nonce, (8 * 16)

  unsigned :original_message_size, 32

  unsigned :reserved, 16

  unsigned :encryption_algorithm, 16

  unsigned :session_id, 64
end
