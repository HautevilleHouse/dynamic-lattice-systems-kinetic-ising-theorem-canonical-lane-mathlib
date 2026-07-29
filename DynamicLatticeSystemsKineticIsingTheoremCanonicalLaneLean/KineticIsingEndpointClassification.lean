import DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.GlauberDynamics

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure KineticIsingEndpointClassificationPackage where
  equilibriumStateExists : Prop
  uniquenessOfStationaryMeasure : Prop
  exponentialMixing : Prop
  endpointSatisfied : Prop

structure KineticIsingEndpointClassificationEvidence
    (E : KineticIsingEndpointClassificationPackage) where
  equilibriumStateExistsClosed : E.equilibriumStateExists
  uniquenessOfStationaryMeasureClosed : E.uniquenessOfStationaryMeasure
  exponentialMixingClosed : E.exponentialMixing
  endpointSatisfiedClosed : E.endpointSatisfied

def KineticIsingEndpointClassificationClosed
    (E : KineticIsingEndpointClassificationPackage) : Prop :=
  E.equilibriumStateExists ∧ E.uniquenessOfStationaryMeasure ∧
  E.exponentialMixing ∧ E.endpointSatisfied

theorem kinetic_ising_endpoint_classification_closed_from_evidence
    (E : KineticIsingEndpointClassificationPackage)
    (Ev : KineticIsingEndpointClassificationEvidence E) :
    KineticIsingEndpointClassificationClosed E := by
  exact And.intro Ev.equilibriumStateExistsClosed
    (And.intro Ev.uniquenessOfStationaryMeasureClosed
      (And.intro Ev.exponentialMixingClosed Ev.endpointSatisfiedClosed))

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse