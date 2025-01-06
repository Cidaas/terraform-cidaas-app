output "client_id" {
  value       = cidaas_app.app.client_id
  description = "The client ID of the Cidaas app"
}

output "client_secret" {
  value       = cidaas_app.app.client_secret
  description = "The client secret of the Cidaas app"
  sensitive   = true
}

output "client_name" {
  value       = cidaas_app.app.client_name
  description = "The name of the Cidaas app"
}

output "client_type" {
  value       = cidaas_app.app.client_type
  description = "The type of the Cidaas app"
}

output "accent_color" {
  value       = cidaas_app.app.accent_color
  description = "The accent color configured for the app"
}

output "primary_color" {
  value       = cidaas_app.app.primary_color
  description = "The primary color configured for the app"
}

output "media_type" {
  value       = cidaas_app.app.media_type
  description = "The media type configured for the app"
}

output "content_align" {
  value       = cidaas_app.app.content_align
  description = "The content alignment configuration"
}

output "allow_login_with" {
  value       = cidaas_app.app.allow_login_with
  description = "The allowed login methods"
}

output "redirect_uris" {
  value       = cidaas_app.app.redirect_uris
  description = "The redirect URIs configured for the app"
}

output "allowed_logout_urls" {
  value       = cidaas_app.app.allowed_logout_urls
  description = "The allowed logout URLs for the app"
}

output "enable_deduplication" {
  value       = cidaas_app.app.enable_deduplication
  description = "Whether deduplication is enabled"
}

output "auto_login_after_register" {
  value       = cidaas_app.app.auto_login_after_register
  description = "Whether auto-login after registration is enabled"
}

output "enable_passwordless_auth" {
  value       = cidaas_app.app.enable_passwordless_auth
  description = "Whether passwordless authentication is enabled"
}

output "register_with_login_information" {
  value       = cidaas_app.app.register_with_login_information
  description = "Whether registration with login information is enabled"
}

output "allow_disposable_email" {
  value       = cidaas_app.app.allow_disposable_email
  description = "Whether disposable email is allowed"
}

output "validate_phone_number" {
  value       = cidaas_app.app.validate_phone_number
  description = "Whether phone number validation is enabled"
}

output "fds_enabled" {
  value       = cidaas_app.app.fds_enabled
  description = "Whether FDS is enabled"
}

output "hosted_page_group" {
  value       = cidaas_app.app.hosted_page_group
  description = "The hosted page group"
}

output "client_display_name" {
  value       = cidaas_app.app.client_display_name
  description = "The client display name"
}

output "company_name" {
  value       = cidaas_app.app.company_name
  description = "The company name associated with the app"
}

output "company_address" {
  value       = cidaas_app.app.company_address
  description = "The company address associated with the app"
}

output "company_website" {
  value       = cidaas_app.app.company_website
  description = "The company website associated with the app"
}

output "allowed_scopes" {
  value       = cidaas_app.app.allowed_scopes
  description = "The allowed scopes for the app"
}

output "response_types" {
  value       = cidaas_app.app.response_types
  description = "The response types"
}

output "grant_types" {
  value       = cidaas_app.app.grant_types
  description = "The grant types"
}

output "login_providers" {
  value       = cidaas_app.app.login_providers
  description = "The login providers"
}

output "additional_access_token_payload" {
  value       = cidaas_app.app.additional_access_token_payload
  description = "The additional access token payload"
}

output "required_fields" {
  value       = cidaas_app.app.required_fields
  description = "The required fields"
}

output "is_hybrid_app" {
  value       = cidaas_app.app.is_hybrid_app
  description = "Whether the app is hybrid"
}

output "allowed_web_origins" {
  value       = cidaas_app.app.allowed_web_origins
  description = "The allowed web origins"
}

output "allowed_origins" {
  value       = cidaas_app.app.allowed_origins
  description = "The allowed origins"
}

output "mobile_settings" {
  value       = cidaas_app.app.mobile_settings
  description = "The mobile settings"
}

output "default_max_age" {
  value       = cidaas_app.app.default_max_age
  description = "The default max age"
}

output "token_lifetime_in_seconds" {
  value       = cidaas_app.app.token_lifetime_in_seconds
  description = "The token lifetime in seconds"
}

output "id_token_lifetime_in_seconds" {
  value       = cidaas_app.app.id_token_lifetime_in_seconds
  description = "The ID token lifetime in seconds"
}

output "refresh_token_lifetime_in_seconds" {
  value       = cidaas_app.app.refresh_token_lifetime_in_seconds
  description = "The refresh token lifetime in seconds"
}

output "template_group_id" {
  value       = cidaas_app.app.template_group_id
  description = "The template group ID"
}

output "policy_uri" {
  value       = cidaas_app.app.policy_uri
  description = "The policy URI"
}

output "tos_uri" {
  value       = cidaas_app.app.tos_uri
  description = "The terms of service URI"
}

output "imprint_uri" {
  value       = cidaas_app.app.imprint_uri
  description = "The imprint URI"
}

output "contacts" {
  value       = cidaas_app.app.contacts
  description = "The contacts"
}

output "token_endpoint_auth_method" {
  value       = cidaas_app.app.token_endpoint_auth_method
  description = "The token endpoint authentication method"
}

output "token_endpoint_auth_signing_alg" {
  value       = cidaas_app.app.token_endpoint_auth_signing_alg
  description = "The token endpoint authentication signing algorithm"
}

output "default_acr_values" {
  value       = cidaas_app.app.default_acr_values
  description = "The default ACR values"
}

output "editable" {
  value       = cidaas_app.app.editable
  description = "Whether the client is editable"
}

output "web_message_uris" {
  value       = cidaas_app.app.web_message_uris
  description = "The web message URIs"
}

output "social_providers" {
  value       = cidaas_app.app.social_providers
  description = "The configured social providers"
}

output "custom_providers" {
  value       = cidaas_app.app.custom_providers
  description = "The configured custom providers"
}

output "saml_providers" {
  value       = cidaas_app.app.saml_providers
  description = "The SAML providers"
}

output "ad_providers" {
  value       = cidaas_app.app.ad_providers
  description = "The AD providers"
}

output "jwe_enabled" {
  value       = cidaas_app.app.jwe_enabled
  description = "Whether JWE is enabled"
}

output "user_consent" {
  value       = cidaas_app.app.user_consent
  description = "The user consent"
}

output "operations_allowed_groups" {
  value       = cidaas_app.app.operations_allowed_groups
  description = "The operations allowed groups"
}

output "enabled" {
  value       = cidaas_app.app.enabled
  description = "Whether the app is enabled"
}

output "allowed_fields" {
  value       = cidaas_app.app.allowed_fields
  description = "The allowed fields"
}

output "always_ask_mfa" {
  value       = cidaas_app.app.always_ask_mfa
  description = "Whether to always ask for MFA"
}

output "smart_mfa" {
  value       = cidaas_app.app.smart_mfa
  description = "Whether smart MFA is enabled"
}

output "allowed_mfa" {
  value       = cidaas_app.app.allowed_mfa
  description = "The allowed MFA methods"
}

output "captcha_ref" {
  value       = cidaas_app.app.captcha_ref
  description = "The captcha reference"
}

output "captcha_refs" {
  value       = cidaas_app.app.captcha_refs
  description = "The captcha references"
}

output "consent_refs" {
  value       = cidaas_app.app.consent_refs
  description = "The consent references"
}

output "communication_medium_verification" {
  value       = cidaas_app.app.communication_medium_verification
  description = "The communication medium verification"
}

output "email_verification_required" {
  value       = cidaas_app.app.email_verification_required
  description = "Whether email verification is required"
}

output "mobile_number_verification_required" {
  value       = cidaas_app.app.mobile_number_verification_required
  description = "Whether mobile number verification is required"
}

output "allowed_roles" {
  value       = cidaas_app.app.allowed_roles
  description = "The allowed roles"
}

output "default_roles" {
  value       = cidaas_app.app.default_roles
  description = "The default roles"
}

output "enable_classical_provider" {
  value       = cidaas_app.app.enable_classical_provider
  description = "Whether classical provider is enabled"
}

output "is_remember_me_selected" {
  value       = cidaas_app.app.is_remember_me_selected
  description = "Whether remember me is selected"
}

output "enable_bot_detection" {
  value       = cidaas_app.app.enable_bot_detection
  description = "Whether bot detection is enabled"
}

output "bot_provider" {
  value       = cidaas_app.app.bot_provider
  description = "The bot provider"
}

output "allow_guest_login_groups" {
  value       = cidaas_app.app.allow_guest_login_groups
  description = "The allowed guest login groups"
}

output "is_login_success_page_enabled" {
  value       = cidaas_app.app.is_login_success_page_enabled
  description = "Whether login success page is enabled"
}

output "is_register_success_page_enabled" {
  value       = cidaas_app.app.is_register_success_page_enabled
  description = "Whether register success page is enabled"
}

output "group_ids" {
  value       = cidaas_app.app.group_ids
  description = "The group IDs"
}

output "is_group_login_selection_enabled" {
  value       = cidaas_app.app.is_group_login_selection_enabled
  description = "Whether group login selection is enabled"
}

output "group_selection" {
  value       = cidaas_app.app.group_selection
  description = "The group selection"
}

output "group_types" {
  value       = cidaas_app.app.group_types
  description = "The group types"
}

output "backchannel_logout_uri" {
  value       = cidaas_app.app.backchannel_logout_uri
  description = "The backchannel logout URI"
}

output "post_logout_redirect_uris" {
  value       = cidaas_app.app.post_logout_redirect_uris
  description = "The post logout redirect URIs"
}

output "logo_align" {
  value       = cidaas_app.app.logo_align
  description = "The logo alignment"
}

output "mfa" {
  value       = cidaas_app.app.mfa
  description = "The MFA configuration"
}

output "webfinger" {
  value       = cidaas_app.app.webfinger
  description = "The webfinger"
}

output "logo_uri" {
  value       = cidaas_app.app.logo_uri
  description = "The logo URI"
}

output "initiate_login_uri" {
  value       = cidaas_app.app.initiate_login_uri
  description = "The initiate login URI"
}

output "registration_client_uri" {
  value       = cidaas_app.app.registration_client_uri
  description = "The registration client URI"
}

output "registration_access_token" {
  value       = cidaas_app.app.registration_access_token
  description = "The registration access token"
}

output "client_uri" {
  value       = cidaas_app.app.client_uri
  description = "The client URI"
}

output "jwks_uri" {
  value       = cidaas_app.app.jwks_uri
  description = "The JWKS URI"
}

output "jwks" {
  value       = cidaas_app.app.jwks
  description = "The JWKS"
}

output "sector_identifier_uri" {
  value       = cidaas_app.app.sector_identifier_uri
  description = "The sector identifier URI"
}

output "subject_type" {
  value       = cidaas_app.app.subject_type
  description = "The subject type"
}

output "id_token_signed_response_alg" {
  value       = cidaas_app.app.id_token_signed_response_alg
  description = "The ID token signed response algorithm"
}

output "id_token_encrypted_response_alg" {
  value       = cidaas_app.app.id_token_encrypted_response_alg
  description = "The ID token encrypted response algorithm"
}

output "id_token_encrypted_response_enc" {
  value       = cidaas_app.app.id_token_encrypted_response_enc
  description = "The ID token encrypted response encryption"
}

output "userinfo_signed_response_alg" {
  value       = cidaas_app.app.userinfo_signed_response_alg
  description = "The userinfo signed response algorithm"
}

output "userinfo_encrypted_response_alg" {
  value       = cidaas_app.app.userinfo_encrypted_response_alg
  description = "The userinfo encrypted response algorithm"
}

output "userinfo_encrypted_response_enc" {
  value       = cidaas_app.app.userinfo_encrypted_response_enc
  description = "The userinfo encrypted response encryption"
}

output "request_object_signing_alg" {
  value       = cidaas_app.app.request_object_signing_alg
  description = "The request object signing algorithm"
}

output "request_object_encryption_alg" {
  value       = cidaas_app.app.request_object_encryption_alg
  description = "The request object encryption algorithm"
}

output "request_object_encryption_enc" {
  value       = cidaas_app.app.request_object_encryption_enc
  description = "The request object encryption encryption"
}

output "request_uris" {
  value       = cidaas_app.app.request_uris
  description = "The request URIs"
}

output "description" {
  value       = cidaas_app.app.description
  description = "The description"
}

output "default_scopes" {
  value       = cidaas_app.app.default_scopes
  description = "The default scopes"
}

output "pending_scopes" {
  value       = cidaas_app.app.pending_scopes
  description = "The pending scopes"
}

output "consent_page_group" {
  value       = cidaas_app.app.consent_page_group
  description = "The consent page group"
}

output "password_policy_ref" {
  value       = cidaas_app.app.password_policy_ref
  description = "The password policy reference"
}

output "blocking_mechanism_ref" {
  value       = cidaas_app.app.blocking_mechanism_ref
  description = "The blocking mechanism reference"
}

output "sub" {
  value       = cidaas_app.app.sub
  description = "The subject"
}

output "role" {
  value       = cidaas_app.app.role
  description = "The role"
}

output "mfa_configuration" {
  value       = cidaas_app.app.mfa_configuration
  description = "The MFA configuration"
}

output "suggest_mfa" {
  value       = cidaas_app.app.suggest_mfa
  description = "The suggested MFA"
}

output "login_spi" {
  value       = cidaas_app.app.login_spi
  description = "The login SPI"
}

output "background_uri" {
  value       = cidaas_app.app.background_uri
  description = "The background URI"
}

output "video_url" {
  value       = cidaas_app.app.video_url
  description = "The video URL"
}

output "bot_captcha_ref" {
  value       = cidaas_app.app.bot_captcha_ref
  description = "The bot captcha reference"
}

output "application_meta_data" {
  value       = cidaas_app.app.application_meta_data
  description = "The application metadata"
}

output "allow_guest_login" {
  value       = cidaas_app.app.allow_guest_login
  description = "Whether guest login is allowed"
}

output "group_role_restriction" {
  value       = cidaas_app.app.group_role_restriction
  description = "The group role restrictions"
}
output "require_auth_time" {
  value       = cidaas_app.app.require_auth_time
  description = "Whether auth time is required"
}

output "enable_login_spi" {
  value       = cidaas_app.app.enable_login_spi
  description = "Whether login SPI is enabled"
}

output "backchannel_logout_session_required" {
  value       = cidaas_app.app.backchannel_logout_session_required
  description = "Whether backchannel logout session is required"
}

