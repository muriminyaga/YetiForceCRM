{*<!--
/*********************************************************************************
** The contents of this file are subject to the vtiger CRM Public License Version 1.0
* ("License"); You may not use this file except in compliance with the License
* The Original Code is:  vtiger CRM Open Source
* The Initial Developer of the Original Code is vtiger.
* Portions created by vtiger are Copyright (C) vtiger.
* All Rights Reserved.
*
********************************************************************************/
-->*}
{strip}
	<div class="tpl-install-tpl-Step6 container px-2 px-sm-3">
		<main class="main-container">
			<div class="inner-container">
				<form class="" name="step6" method="post" action="Install.php">
					<input type="hidden" name="mode" value="step7">
					<input type="hidden" name="auth_key" value="{$AUTH_KEY}">
					<input type="hidden" name="lang" value="{$LANG}">
					<div class="row">
						<div class="col-12 text-center">
							<h2>{\App\Language::translate('LBL_CONFIGURATION_COMPANY_DETAILS', 'Install')}</h2>
						</div>
					</div>
					<hr>
					<div class="row">
						<p class="col-12">
							{\App\Language::translate('LBL_STEP6_DESCRIPTION', 'Install')}
						</p>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="company-name">{App\Language::translate('LBL_NAME', 'Settings:Companies')}
							&nbsp;<span class="no">*</span></label>
						<div class="col-sm-10">
							<input id="company-name" type="text" name="company_name" class="form-control" data-validation-engine="validate[required]">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="company-industry">{App\Language::translate('LBL_INDUSTRY', 'Settings:Companies')}
							&nbsp;<span class="no">*</span></label>
						<div class="col-sm-10">
							<select class="select2 form-control" id="company-industry" name="company_industry" data-validation-engine="validate[required]">
								<option value="{$ITEM}">{App\Language::translate($ITEM)}</option>
								{foreach from=Install_Utils_Model::getIndustryList() item=ITEM}
									<option value="{$ITEM}">{App\Language::translate($ITEM)}</option>
								{/foreach}
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="company-street">{App\Language::translate('LBL_STREET', 'Settings:Companies')}
							&nbsp;<span class="no">*</span></label>
						<div class="col-sm-10">
							<input id="company-street" type="text" name="company_street" class="form-control" data-validation-engine="validate[required]">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="company-city">{App\Language::translate('LBL_CITY', 'Settings:Companies')}
							&nbsp;<span class="no">*</span></label>
						<div class="col-sm-10">
							<input id="company-city" type="text" name="company_city" class="form-control" data-validation-engine="validate[required]">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="company-code">{App\Language::translate('LBL_CODE', 'Settings:Companies')}
							&nbsp;<span class="no">*</span></label>
						<div class="col-sm-10">
							<input id="company-code" type="text" name="company_code" class="form-control" data-validation-engine="validate[required]">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="company-state">{App\Language::translate('LBL_STATE', 'Settings:Companies')}</label>
						<div class="col-sm-10">
							<input id="company-state" type="text" name="company_state" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="company-country">{App\Language::translate('LBL_COUNTRY', 'Settings:Companies')}
							&nbsp;<span class="no">*</span></label>
						<div class="col-sm-10">
							<select id="company-country" class="select2 form-control" name="company_country" data-validation-engine="validate[required]">
								{foreach from=Install_Utils_Model::getCountryList() item=ITEM}
									<option value="{$ITEM}">{\App\Language::translateSingleMod($ITEM,'Other.Country')}</option>
								{/foreach}
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="company-phone">{App\Language::translate('LBL_PHONE', 'Settings:Companies')}</label>
						<div class="col-sm-10">
							<input id="company-phone" type="text" name="company_phone" class="form-control" data-validation-engine="validate[custom[phone]]">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="company-website">{App\Language::translate('LBL_WEBSITE', 'Settings:Companies')}</label>
						<div class="col-sm-10">
							<input id="company-website" type="text" name="company_website" class="form-control" data-validation-engine="validate[custom[url]]">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="company-email">{App\Language::translate('LBL_EMAIL', 'Settings:Companies')}
							&nbsp;<span class="no">*</span></label>
						<div class="col-sm-10">
							<input id="company-email" type="text" name="company_email" class="form-control" data-validation-engine="validate[required,custom[email]]">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="company-vatid">{App\Language::translate('LBL_VATID', 'Settings:Companies')}</label>
						<div class="col-sm-10">
							<input id="company-vatid" type="text" name="company_vatid" class="form-control"></div>
					</div>
					<div class="form-button-nav fixed-bottom button-container p-1 bg-light">
						<div class="text-center w-100">
							<a class="btn btn-lg c-btn-block-xs-down btn-danger mr-sm-1 mb-1 mb-sm-0" href="Install.php" role="button">
								<span class="fas fa-lg fa-arrow-circle-left mr-2"></span>
								{App\Language::translate('LBL_BACK', 'Install')}
							</a>
							<button type="submit" class="btn btn-lg c-btn-block-xs-down btn-primary">
								{App\Language::translate('LBL_NEXT', 'Install')}
								<span class="fas fa-lg fa-arrow-circle-right ml-2"></span>
							</button>
						</div>
					</div>
				</form>
			</div>
		</main>
	</div>
{/strip}
