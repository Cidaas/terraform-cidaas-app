locals {
  attributes = {
    # required attributes
    client_type         = var.client_type
    company_name        = var.company_name
    company_address     = var.company_address
    company_website     = var.company_website
    allowed_scopes      = var.allowed_scopes
    redirect_uris       = var.redirect_uris
    allowed_logout_urls = var.allowed_logout_urls

    # optional attributes
    accent_color                        = var.accent_color
    primary_color                       = var.primary_color
    media_type                          = var.media_type
    content_align                       = var.content_align
    allow_login_with                    = var.allow_login_with
    enable_deduplication                = var.enable_deduplication
    auto_login_after_register           = var.auto_login_after_register
    enable_passwordless_auth            = var.enable_passwordless_auth
    register_with_login_information     = var.register_with_login_information
    allow_disposable_email              = var.allow_disposable_email
    validate_phone_number               = var.validate_phone_number
    fds_enabled                         = var.fds_enabled
    hosted_page_group                   = var.hosted_page_group
    client_display_name                 = var.client_display_name
    response_types                      = var.response_types
    grant_types                         = var.grant_types
    login_providers                     = var.login_providers
    additional_access_token_payload     = var.additional_access_token_payload
    required_fields                     = var.required_fields
    is_hybrid_app                       = var.is_hybrid_app
    allowed_web_origins                 = var.allowed_web_origins
    allowed_origins                     = var.allowed_origins
    mobile_settings                     = var.mobile_settings
    default_max_age                     = var.default_max_age
    token_lifetime_in_seconds           = var.token_lifetime_in_seconds
    id_token_lifetime_in_seconds        = var.id_token_lifetime_in_seconds
    refresh_token_lifetime_in_seconds   = var.refresh_token_lifetime_in_seconds
    template_group_id                   = var.template_group_id
    client_id                           = var.client_id
    client_secret                       = var.client_secret
    saml_providers                      = var.saml_providers
    ad_providers                        = var.ad_providers
    jwe_enabled                         = var.jwe_enabled
    user_consent                        = var.user_consent
    allowed_groups                      = var.allowed_groups
    operations_allowed_groups           = var.operations_allowed_groups
    enabled                             = var.enabled
    allowed_fields                      = var.allowed_fields
    always_ask_mfa                      = var.always_ask_mfa
    smart_mfa                           = var.smart_mfa
    allowed_mfa                         = var.allowed_mfa
    captcha_ref                         = var.captcha_ref
    captcha_refs                        = var.captcha_refs
    consent_refs                        = var.consent_refs
    communication_medium_verification   = var.communication_medium_verification
    email_verification_required         = var.email_verification_required
    mobile_number_verification_required = var.mobile_number_verification_required
    allowed_roles                       = var.allowed_roles
    default_roles                       = var.default_roles
    enable_classical_provider           = var.enable_classical_provider
    is_remember_me_selected             = var.is_remember_me_selected
    enable_bot_detection                = var.enable_bot_detection
    bot_provider                        = var.bot_provider
    allow_guest_login_groups            = var.allow_guest_login_groups
    is_login_success_page_enabled       = var.is_login_success_page_enabled
    is_register_success_page_enabled    = var.is_register_success_page_enabled
    group_ids                           = var.group_ids
    is_group_login_selection_enabled    = var.is_group_login_selection_enabled
    group_selection                     = var.group_selection
    group_types                         = var.group_types
    backchannel_logout_uri              = var.backchannel_logout_uri
    post_logout_redirect_uris           = var.post_logout_redirect_uris
    userinfo_signed_response_alg        = var.userinfo_signed_response_alg
    userinfo_encrypted_response_alg     = var.userinfo_encrypted_response_alg
    userinfo_encrypted_response_enc     = var.userinfo_encrypted_response_enc
    request_object_signing_alg          = var.request_object_signing_alg
    request_object_encryption_alg       = var.request_object_encryption_alg
    request_object_encryption_enc       = var.request_object_encryption_enc
    request_uris                        = var.request_uris
    description                         = var.description
    default_scopes                      = var.default_scopes
    pending_scopes                      = var.pending_scopes
    consent_page_group                  = var.consent_page_group
    password_policy_ref                 = var.password_policy_ref
    blocking_mechanism_ref              = var.blocking_mechanism_ref
    sub                                 = var.sub
    role                                = var.role
    mfa_configuration                   = var.mfa_configuration
    suggest_mfa                         = var.suggest_mfa
    login_spi                           = var.login_spi
    background_uri                      = var.background_uri
    video_url                           = var.video_url
    bot_captcha_ref                     = var.bot_captcha_ref
    application_meta_data               = var.application_meta_data
    allow_guest_login                   = var.allow_guest_login
    group_role_restriction              = var.group_role_restriction
    mfa                                 = var.mfa
    social_providers                    = var.social_providers
    custom_providers                    = var.custom_providers
    logo_align                          = var.logo_align
    webfinger                           = var.webfinger
    require_auth_time                   = var.require_auth_time
    enable_login_spi                    = var.enable_login_spi
    backchannel_logout_session_required = var.backchannel_logout_session_required
    suggest_verification_methods        = var.suggest_verification_methods
    policy_uri                          = var.policy_uri
    tos_uri                             = var.tos_uri
    imprint_uri                         = var.imprint_uri
    contacts                            = var.contacts
    token_endpoint_auth_method          = var.token_endpoint_auth_method
    token_endpoint_auth_signing_alg     = var.token_endpoint_auth_signing_alg
    default_acr_values                  = var.default_acr_values
    editable                            = var.editable
    web_message_uris                    = var.web_message_uris
    initiate_login_uri                  = var.initiate_login_uri
    registration_client_uri             = var.registration_client_uri
    registration_access_token           = var.registration_access_token
    client_uri                          = var.client_uri
    jwks_uri                            = var.jwks_uri
    jwks                                = var.jwks
    sector_identifier_uri               = var.sector_identifier_uri
    subject_type                        = var.subject_type
    id_token_signed_response_alg        = var.id_token_signed_response_alg
    id_token_encrypted_response_alg     = var.id_token_encrypted_response_alg
    id_token_encrypted_response_enc     = var.id_token_encrypted_response_enc
    logo_uri                            = var.logo_uri
    accept_roles_in_the_registration    = var.accept_roles_in_the_registration
  }
  defaults = { for k, v in local.attributes : k => v != null ? v : lookup(var.common_configs, k, null) }

}

resource "cidaas_app" "app" {
  # required attributes
  client_name         = var.client_name
  client_type         = local.defaults["client_type"]
  company_name        = local.defaults["company_name"]
  company_address     = local.defaults["company_address"]
  company_website     = local.defaults["company_website"]
  allowed_scopes      = local.defaults["allowed_scopes"]
  redirect_uris       = local.defaults["redirect_uris"]
  allowed_logout_urls = local.defaults["allowed_logout_urls"]

  # optional attributes
  accent_color                        = local.defaults["accent_color"]
  primary_color                       = local.defaults["primary_color"]
  media_type                          = local.defaults["media_type"]
  content_align                       = local.defaults["content_align"]
  allow_login_with                    = local.defaults["allow_login_with"]
  enable_deduplication                = local.defaults["enable_deduplication"]
  auto_login_after_register           = local.defaults["auto_login_after_register"]
  enable_passwordless_auth            = local.defaults["enable_passwordless_auth"]
  register_with_login_information     = local.defaults["register_with_login_information"]
  allow_disposable_email              = local.defaults["allow_disposable_email"]
  validate_phone_number               = local.defaults["validate_phone_number"]
  fds_enabled                         = local.defaults["fds_enabled"]
  hosted_page_group                   = local.defaults["hosted_page_group"]
  client_display_name                 = local.defaults["client_display_name"]
  response_types                      = local.defaults["response_types"]
  grant_types                         = local.defaults["grant_types"]
  login_providers                     = local.defaults["login_providers"]
  additional_access_token_payload     = local.defaults["additional_access_token_payload"]
  required_fields                     = local.defaults["required_fields"]
  is_hybrid_app                       = local.defaults["is_hybrid_app"]
  allowed_web_origins                 = local.defaults["allowed_web_origins"]
  allowed_origins                     = local.defaults["allowed_origins"]
  mobile_settings                     = local.defaults["mobile_settings"]
  default_max_age                     = local.defaults["default_max_age"]
  token_lifetime_in_seconds           = local.defaults["token_lifetime_in_seconds"]
  id_token_lifetime_in_seconds        = local.defaults["id_token_lifetime_in_seconds"]
  refresh_token_lifetime_in_seconds   = local.defaults["refresh_token_lifetime_in_seconds"]
  template_group_id                   = local.defaults["template_group_id"]
  client_id                           = local.defaults["client_id"]
  client_secret                       = local.defaults["client_secret"]
  saml_providers                      = local.defaults["saml_providers"]
  ad_providers                        = local.defaults["ad_providers"]
  jwe_enabled                         = local.defaults["jwe_enabled"]
  user_consent                        = local.defaults["user_consent"]
  allowed_groups                      = local.defaults["allowed_groups"]
  operations_allowed_groups           = local.defaults["operations_allowed_groups"]
  enabled                             = local.defaults["enabled"]
  allowed_fields                      = local.defaults["allowed_fields"]
  always_ask_mfa                      = local.defaults["always_ask_mfa"]
  smart_mfa                           = local.defaults["smart_mfa"]
  allowed_mfa                         = local.defaults["allowed_mfa"]
  captcha_ref                         = local.defaults["captcha_ref"]
  captcha_refs                        = local.defaults["captcha_refs"]
  consent_refs                        = local.defaults["consent_refs"]
  communication_medium_verification   = local.defaults["communication_medium_verification"]
  email_verification_required         = local.defaults["email_verification_required"]
  mobile_number_verification_required = local.defaults["mobile_number_verification_required"]
  allowed_roles                       = local.defaults["allowed_roles"]
  default_roles                       = local.defaults["default_roles"]
  enable_classical_provider           = local.defaults["enable_classical_provider"]
  is_remember_me_selected             = local.defaults["is_remember_me_selected"]
  enable_bot_detection                = local.defaults["enable_bot_detection"]
  bot_provider                        = local.defaults["bot_provider"]
  allow_guest_login_groups            = local.defaults["allow_guest_login_groups"]
  is_login_success_page_enabled       = local.defaults["is_login_success_page_enabled"]
  is_register_success_page_enabled    = local.defaults["is_register_success_page_enabled"]
  group_ids                           = local.defaults["group_ids"]
  is_group_login_selection_enabled    = local.defaults["is_group_login_selection_enabled"]
  group_selection                     = local.defaults["group_selection"]
  group_types                         = local.defaults["group_types"]
  backchannel_logout_uri              = local.defaults["backchannel_logout_uri"]
  post_logout_redirect_uris           = local.defaults["post_logout_redirect_uris"]
  userinfo_signed_response_alg        = local.defaults["userinfo_signed_response_alg"]
  userinfo_encrypted_response_alg     = local.defaults["userinfo_encrypted_response_alg"]
  userinfo_encrypted_response_enc     = local.defaults["userinfo_encrypted_response_enc"]
  request_object_signing_alg          = local.defaults["request_object_signing_alg"]
  request_object_encryption_alg       = local.defaults["request_object_encryption_alg"]
  request_object_encryption_enc       = local.defaults["request_object_encryption_enc"]
  request_uris                        = local.defaults["request_uris"]
  description                         = local.defaults["description"]
  default_scopes                      = local.defaults["default_scopes"]
  pending_scopes                      = local.defaults["pending_scopes"]
  consent_page_group                  = local.defaults["consent_page_group"]
  password_policy_ref                 = local.defaults["password_policy_ref"]
  blocking_mechanism_ref              = local.defaults["blocking_mechanism_ref"]
  sub                                 = local.defaults["sub"]
  role                                = local.defaults["role"]
  mfa_configuration                   = local.defaults["mfa_configuration"]
  suggest_mfa                         = local.defaults["suggest_mfa"]
  login_spi                           = local.defaults["login_spi"]
  background_uri                      = local.defaults["background_uri"]
  video_url                           = local.defaults["video_url"]
  bot_captcha_ref                     = local.defaults["bot_captcha_ref"]
  application_meta_data               = local.defaults["application_meta_data"]
  allow_guest_login                   = local.defaults["allow_guest_login"]
  group_role_restriction              = local.defaults["group_role_restriction"]
  mfa                                 = local.defaults["mfa"]
  social_providers                    = local.defaults["social_providers"]
  custom_providers                    = local.defaults["custom_providers"]
  logo_align                          = local.defaults["logo_align"]
  webfinger                           = local.defaults["webfinger"]
  require_auth_time                   = local.defaults["require_auth_time"]
  enable_login_spi                    = local.defaults["enable_login_spi"]
  backchannel_logout_session_required = local.defaults["backchannel_logout_session_required"]
  suggest_verification_methods        = local.defaults["suggest_verification_methods"]
  policy_uri                          = local.defaults["policy_uri"]
  tos_uri                             = local.defaults["tos_uri"]
  imprint_uri                         = local.defaults["imprint_uri"]
  contacts                            = local.defaults["contacts"]
  token_endpoint_auth_method          = local.defaults["token_endpoint_auth_method"]
  token_endpoint_auth_signing_alg     = local.defaults["token_endpoint_auth_signing_alg"]
  default_acr_values                  = local.defaults["default_acr_values"]
  editable                            = local.defaults["editable"]
  web_message_uris                    = local.defaults["web_message_uris"]
  initiate_login_uri                  = local.defaults["initiate_login_uri"]
  registration_client_uri             = local.defaults["registration_client_uri"]
  registration_access_token           = local.defaults["registration_access_token"]
  client_uri                          = local.defaults["client_uri"]
  jwks_uri                            = local.defaults["jwks_uri"]
  jwks                                = local.defaults["jwks"]
  sector_identifier_uri               = local.defaults["sector_identifier_uri"]
  subject_type                        = local.defaults["subject_type"]
  id_token_signed_response_alg        = local.defaults["id_token_signed_response_alg"]
  id_token_encrypted_response_alg     = local.defaults["id_token_encrypted_response_alg"]
  id_token_encrypted_response_enc     = local.defaults["id_token_encrypted_response_enc"]
  logo_uri                            = local.defaults["logo_uri"]
  accept_roles_in_the_registration    = local.defaults["accept_roles_in_the_registration"]
}
