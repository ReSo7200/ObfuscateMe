.class Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;
.super Ljava/lang/Object;
.source "RuleMemberValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/runners/rules/RuleMemberValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


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

.field private methods:Z

.field private final validators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->annotation:Ljava/lang/Class;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->methods:Z

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->validators:Ljava/util/List;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Lorg/junit/internal/runners/rules/RuleMemberValidator$1;

    .line 111
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    .line 111
    iget-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->validators:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    .line 111
    iget-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->annotation:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$900(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;

    .line 111
    iget-boolean v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->methods:Z

    return v0
.end method


# virtual methods
.method build()Lorg/junit/internal/runners/rules/RuleMemberValidator;
    .locals 1

    .line 133
    new-instance v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-direct {v0, p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;)V

    return-object v0
.end method

.method forMethods()Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;
    .locals 1

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->methods:Z

    .line 124
    return-object p0
.end method

.method withValidator(Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;)Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;
    .locals 1
    .param p1, "validator"    # Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;

    .line 128
    iget-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator$Builder;->validators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-object p0
.end method
