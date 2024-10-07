.class public Lorg/junit/internal/runners/rules/RuleMemberValidator;
.super Ljava/lang/Object;
.source "RuleMemberValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/runners/rules/RuleMemberValidator$FieldMustBeATestRule;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$MethodMustBeATestRule;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$MethodMustBeARule;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$FieldMustBeARule;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBePublic;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$DeclaringClassMustBePublic;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeStatic;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;
    }
.end annotation


# static fields
.field public static final CLASS_RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

.field public static final CLASS_RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

.field public static final RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

.field public static final RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;


# instance fields
.field private final annotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final methods:Z

.field private final validatorStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    invoke-static {}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->classRuleValidatorBuilder()Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$DeclaringClassMustBePublic;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$DeclaringClassMustBePublic;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeStatic;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeStatic;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBePublic;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBePublic;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$FieldMustBeATestRule;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$FieldMustBeATestRule;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->build()Lorg/junit/internal/runners/rules/RuleMemberValidator;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->CLASS_RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    .line 42
    invoke-static {}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->testRuleValidatorBuilder()Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBePublic;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBePublic;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$FieldMustBeARule;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$FieldMustBeARule;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->build()Lorg/junit/internal/runners/rules/RuleMemberValidator;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    .line 51
    invoke-static {}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->classRuleValidatorBuilder()Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->forMethods()Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$DeclaringClassMustBePublic;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$DeclaringClassMustBePublic;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeStatic;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeStatic;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBePublic;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBePublic;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$MethodMustBeATestRule;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MethodMustBeATestRule;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->build()Lorg/junit/internal/runners/rules/RuleMemberValidator;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->CLASS_RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    .line 63
    invoke-static {}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->testRuleValidatorBuilder()Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->forMethods()Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBePublic;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBePublic;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$MethodMustBeARule;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MethodMustBeARule;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->build()Lorg/junit/internal/runners/rules/RuleMemberValidator;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    return-void
.end method

.method constructor <init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->access$800(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->annotation:Ljava/lang/Class;

    .line 77
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->access$900(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->methods:Z

    .line 78
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->access$1000(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validatorStrategies:Ljava/util/List;

    .line 79
    return-void
.end method

.method static synthetic access$1200(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/runners/model/FrameworkMember;

    .line 28
    invoke-static {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->isMethodRule(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/runners/model/FrameworkMember;

    .line 28
    invoke-static {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->isRuleType(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/runners/model/FrameworkMember;

    .line 28
    invoke-static {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->isTestRule(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v0

    return v0
.end method

.method private static classRuleValidatorBuilder()Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;
    .locals 3

    .line 104
    new-instance v0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    const-class v1, Lorg/junit/ClassRule;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;-><init>(Ljava/lang/Class;Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    return-object v0
.end method

.method private static isMethodRule(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;)Z"
        }
    .end annotation

    .line 146
    .local p0, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    const-class v0, Lorg/junit/rules/MethodRule;

    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkMember;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static isRuleType(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;)Z"
        }
    .end annotation

    .line 138
    .local p0, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    invoke-static {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->isMethodRule(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->isTestRule(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isTestRule(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;)Z"
        }
    .end annotation

    .line 142
    .local p0, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    const-class v0, Lorg/junit/rules/TestRule;

    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkMember;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static testRuleValidatorBuilder()Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;
    .locals 3

    .line 108
    new-instance v0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    const-class v1, Lorg/junit/Rule;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;-><init>(Ljava/lang/Class;Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V

    return-object v0
.end method

.method private validateMember(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validatorStrategies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;

    .line 99
    .local v1, "strategy":Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;
    iget-object v2, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->annotation:Ljava/lang/Class;

    invoke-interface {v1, p1, v2, p2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;->validate(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/util/List;)V

    .end local v1    # "strategy":Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;
    goto :goto_0

    .line 101
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V
    .locals 3
    .param p1, "target"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/TestClass;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-boolean v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->methods:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->annotation:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->annotation:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/TestClass;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<+Lorg/junit/runners/model/FrameworkMember<*>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/FrameworkMember;

    .line 93
    .local v2, "each":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    invoke-direct {p0, v2, p2}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validateMember(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V

    .end local v2    # "each":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    goto :goto_1

    .line 95
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
