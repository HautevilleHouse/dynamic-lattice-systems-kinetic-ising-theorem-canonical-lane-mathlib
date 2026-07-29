import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure CorrelationDecayPackage where
  spinCorrelationFunction : Type u
  exponentialDecayRate : Type v
  clusterExpansion : Prop
  highTemperatureDecay : Prop
  criticalExponent : Prop

structure CorrelationDecayEvidence (C : CorrelationDecayPackage) where
  spinCorrelationFunctionClosed : C.spinCorrelationFunction
  exponentialDecayRateClosed : C.exponentialDecayRate
  clusterExpansionClosed : C.clusterExpansion
  highTemperatureDecayClosed : C.highTemperatureDecay
  criticalExponentClosed : C.criticalExponent

def CorrelationDecayClosed (C : CorrelationDecayPackage) : Prop :=
  C.spinCorrelationFunction ∧ C.exponentialDecayRate ∧ C.clusterExpansion ∧ C.highTemperatureDecay ∧ C.criticalExponent

theorem correlation_decay_closed_from_evidence (C : CorrelationDecayPackage) (E : CorrelationDecayEvidence C) : CorrelationDecayClosed C := by
  exact And.intro E.spinCorrelationFunctionClosed (And.intro E.exponentialDecayRateClosed (And.intro E.clusterExpansionClosed (And.intro E.highTemperatureDecayClosed E.criticalExponentClosed)))

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse