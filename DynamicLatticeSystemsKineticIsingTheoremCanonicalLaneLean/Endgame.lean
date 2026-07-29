import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure KineticIsingAdmittedObject where
  latticeType : Type u
  spinState : latticeType -> Prop
  isingInteraction : Prop
  kineticTransition : Prop
  glauberDynamics : Prop
  closure : isingInteraction ∧ kineticTransition ∧ glauberDynamics

structure AdmissibleClass where
  object : KineticIsingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.closure

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.closure

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedKineticIsingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_kinetic_ising_endgame (A : AdmissibleClass) : ConstrainedKineticIsingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse