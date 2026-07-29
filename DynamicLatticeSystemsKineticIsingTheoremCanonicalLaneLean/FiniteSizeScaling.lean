import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure FiniteSizeScalingPackage where
  systemSize : Type u
  scalingHypothesis : Prop
  thermodynamicLimit : Prop
  susceptibility : Type v
  correlationLength : Type w

structure FiniteSizeScalingEvidence (F : FiniteSizeScalingPackage) where
  scalingHypothesisClosed : F.scalingHypothesis
  thermodynamicLimitClosed : F.thermodynamicLimit
  susceptibilityClosed : F.susceptibility
  correlationLengthClosed : F.correlationLength

def FiniteSizeScalingClosed (F : FiniteSizeScalingPackage) : Prop :=
  F.systemSize ∧ F.scalingHypothesis ∧ F.thermodynamicLimit ∧ F.susceptibility ∧ F.correlationLength

theorem finite_size_scaling_closed_from_evidence (F : FiniteSizeScalingPackage) (E : FiniteSizeScalingEvidence F) : FiniteSizeScalingClosed F := by
  exact And.intro E.scalingHypothesisClosed (And.intro E.thermodynamicLimitClosed (And.intro E.susceptibilityClosed E.correlationLengthClosed))

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse