################################################################################
#
# Dashboard Controller
#
# Copyright (c) 2019 The MITRE Corporation.  All rights reserved.
#
################################################################################

class DashboardController < ApplicationController

  def index
 #   patient_id = params[:patient]
 #   if patient_id.present?
  #    fhir_patient = SessionHandler.fhir_client(session.id).read(FHIR::Patient, patient_id).resource
#
  #    @patient              = Patient.new(fhir_patient, SessionHandler.fhir_client(session.id))
 #   else
  #    redirect_to :root
  #  end
    load_bundle
    # sets up @patient
    @patient = Patient.new(@patients[0], @resources, nil)
  end

end
