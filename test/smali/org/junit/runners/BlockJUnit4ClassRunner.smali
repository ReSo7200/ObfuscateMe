.class public Lorg/junit/runners/BlockJUnit4ClassRunner;
.super Lorg/junit/runners/ParentRunner;
.source "BlockJUnit4ClassRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/junit/runners/ParentRunner<",
        "Lorg/junit/runners/model/FrameworkMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final CURRENT_RULE_CONTAINER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/junit/runners/RuleContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static PUBLIC_CLASS_VALIDATOR:Lorg/junit/validator/TestClassValidator;


# instance fields
.field private final methodDescriptions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lorg/junit/validator/PublicClassValidator;

    invoke-direct {v0}, Lorg/junit/validator/PublicClassValidator;-><init>()V

    sput-object v0, Lorg/junit/runners/BlockJUnit4ClassRunner;->PUBLIC_CLASS_VALIDATOR:Lorg/junit/validator/TestClassValidator;

    .line 456
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/junit/runners/BlockJUnit4ClassRunner;->CURRENT_RULE_CONTAINER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 74
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;-><init>(Ljava/lang/Class;)V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodDescriptions:Ljava/util/concurrent/ConcurrentMap;

    .line 75
    return-void
.end method

.method protected constructor <init>(Lorg/junit/runners/model/TestClass;)V
    .locals 1
    .param p1, "testClass"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;-><init>(Lorg/junit/runners/model/TestClass;)V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodDescriptions:Ljava/util/concurrent/ConcurrentMap;

    .line 85
    return-void
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .line 63
    sget-object v0, Lorg/junit/runners/BlockJUnit4ClassRunner;->CURRENT_RULE_CONTAINER:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private getExpectedException(Lorg/junit/Test;)Ljava/lang/Class;
    .locals 2
    .param p1, "annotation"    # Lorg/junit/Test;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/Test;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 442
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/junit/Test;->expected()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/junit/Test$None;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    invoke-interface {p1}, Lorg/junit/Test;->expected()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 443
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTimeout(Lorg/junit/Test;)J
    .locals 2
    .param p1, "annotation"    # Lorg/junit/Test;

    .line 450
    if-nez p1, :cond_0

    .line 451
    const-wide/16 v0, 0x0

    return-wide v0

    .line 453
    :cond_0
    invoke-interface {p1}, Lorg/junit/Test;->timeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private hasOneConstructor()Z
    .locals 2

    .line 208
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private validateMethods(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    .line 234
    return-void
.end method

.method private validatePublicConstructor(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lorg/junit/runners/BlockJUnit4ClassRunner;->PUBLIC_CLASS_VALIDATOR:Lorg/junit/validator/TestClassValidator;

    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/junit/validator/TestClassValidator;->validateTestClass(Lorg/junit/runners/model/TestClass;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    :cond_0
    return-void
.end method

.method private withRules(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 5
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "statement"    # Lorg/junit/runners/model/Statement;

    .line 397
    new-instance v0, Lorg/junit/runners/RuleContainer;

    invoke-direct {v0}, Lorg/junit/runners/RuleContainer;-><init>()V

    .line 398
    .local v0, "ruleContainer":Lorg/junit/runners/RuleContainer;
    sget-object v1, Lorg/junit/runners/BlockJUnit4ClassRunner;->CURRENT_RULE_CONTAINER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 400
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestRules(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 401
    .local v1, "testRules":Ljava/util/List;, "Ljava/util/List<Lorg/junit/rules/TestRule;>;"
    invoke-virtual {p0, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;->rules(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/rules/MethodRule;

    .line 402
    .local v3, "each":Lorg/junit/rules/MethodRule;
    instance-of v4, v3, Lorg/junit/rules/TestRule;

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 403
    :cond_0
    invoke-virtual {v0, v3}, Lorg/junit/runners/RuleContainer;->add(Lorg/junit/rules/MethodRule;)V

    .end local v3    # "each":Lorg/junit/rules/MethodRule;
    :cond_1
    goto :goto_0

    .line 406
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/rules/TestRule;

    .line 407
    .local v3, "rule":Lorg/junit/rules/TestRule;
    invoke-virtual {v0, v3}, Lorg/junit/runners/RuleContainer;->add(Lorg/junit/rules/TestRule;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "rule":Lorg/junit/rules/TestRule;
    goto :goto_1

    .line 410
    .end local v1    # "testRules":Ljava/util/List;, "Ljava/util/List<Lorg/junit/rules/TestRule;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    sget-object v1, Lorg/junit/runners/BlockJUnit4ClassRunner;->CURRENT_RULE_CONTAINER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 411
    nop

    .line 412
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->describeChild(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runner/Description;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lorg/junit/runners/RuleContainer;->apply(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runner/Description;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    return-object v1

    .line 410
    :catchall_0
    move-exception v1

    sget-object v2, Lorg/junit/runners/BlockJUnit4ClassRunner;->CURRENT_RULE_CONTAINER:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    throw v1
.end method


# virtual methods
.method protected collectInitializationErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-super {p0, p1}, Lorg/junit/runners/ParentRunner;->collectInitializationErrors(Ljava/util/List;)V

    .line 151
    invoke-direct {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validatePublicConstructor(Ljava/util/List;)V

    .line 152
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateNoNonStaticInnerClass(Ljava/util/List;)V

    .line 153
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateConstructor(Ljava/util/List;)V

    .line 154
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateInstanceMethods(Ljava/util/List;)V

    .line 155
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateFields(Ljava/util/List;)V

    .line 156
    invoke-direct {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateMethods(Ljava/util/List;)V

    .line 157
    return-void
.end method

.method protected computeTestMethods()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    const-class v1, Lorg/junit/Test;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected createTest()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createTest(Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->createTest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 63
    move-object v0, p1

    check-cast v0, Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {p0, v0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->describeChild(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method protected describeChild(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runner/Description;
    .locals 4
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;

    .line 118
    iget-object v0, p0, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodDescriptions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 120
    .local v0, "description":Lorg/junit/runner/Description;
    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v1}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->testName(Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodDescriptions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    return-object v0
.end method

.method protected getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->computeTestMethods()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getTestRules(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;-><init>(Lorg/junit/runners/BlockJUnit4ClassRunner$1;)V

    .line 436
    .local v0, "collector":Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;, "Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector<Lorg/junit/rules/TestRule;>;"
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    const-class v2, Lorg/junit/Rule;

    const-class v3, Lorg/junit/rules/TestRule;

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/junit/runners/model/TestClass;->collectAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lorg/junit/runners/model/MemberValueConsumer;)V

    .line 437
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    const-class v2, Lorg/junit/Rule;

    const-class v3, Lorg/junit/rules/TestRule;

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/junit/runners/model/TestClass;->collectAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lorg/junit/runners/model/MemberValueConsumer;)V

    .line 438
    iget-object v1, v0, Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;->result:Ljava/util/List;

    return-object v1
.end method

.method protected bridge synthetic isIgnored(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 63
    move-object v0, p1

    check-cast v0, Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {p0, v0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->isIgnored(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v0

    return v0
.end method

.method protected isIgnored(Lorg/junit/runners/model/FrameworkMethod;)Z
    .locals 1
    .param p1, "child"    # Lorg/junit/runners/model/FrameworkMethod;

    .line 113
    const-class v0, Lorg/junit/Ignore;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;
    .locals 3
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;

    .line 306
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/junit/runners/BlockJUnit4ClassRunner$2;

    invoke-direct {v1, p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner$2;-><init>(Lorg/junit/runners/BlockJUnit4ClassRunner;Lorg/junit/runners/model/FrameworkMethod;)V

    invoke-virtual {v1}, Lorg/junit/runners/BlockJUnit4ClassRunner$2;->run()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .local v0, "test":Ljava/lang/Object;
    nop

    .line 316
    invoke-virtual {p0, p1, v0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodInvoker(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 317
    .local v1, "statement":Lorg/junit/runners/model/Statement;
    invoke-virtual {p0, p1, v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->possiblyExpectingExceptions(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 318
    invoke-virtual {p0, p1, v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withPotentialTimeout(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 319
    invoke-virtual {p0, p1, v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withBefores(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 320
    invoke-virtual {p0, p1, v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withAfters(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 321
    invoke-direct {p0, p1, v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withRules(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 322
    invoke-virtual {p0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withInterruptIsolation(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 323
    return-object v1

    .line 312
    .end local v0    # "test":Ljava/lang/Object;
    .end local v1    # "statement":Lorg/junit/runners/model/Statement;
    :catchall_0
    move-exception v1

    .line 313
    .restart local v0    # "test":Ljava/lang/Object;
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Lorg/junit/internal/runners/statements/Fail;

    invoke-direct {v2, v1}, Lorg/junit/internal/runners/statements/Fail;-><init>(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method protected methodInvoker(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "test"    # Ljava/lang/Object;

    .line 334
    new-instance v0, Lorg/junit/internal/runners/statements/InvokeMethod;

    invoke-direct {v0, p1, p2}, Lorg/junit/internal/runners/statements/InvokeMethod;-><init>(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected possiblyExpectingExceptions(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 3
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "test"    # Ljava/lang/Object;
    .param p3, "next"    # Lorg/junit/runners/model/Statement;

    .line 345
    const-class v0, Lorg/junit/Test;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/Test;

    .line 346
    .local v0, "annotation":Lorg/junit/Test;
    invoke-direct {p0, v0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getExpectedException(Lorg/junit/Test;)Ljava/lang/Class;

    move-result-object v1

    .line 347
    .local v1, "expectedExceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    if-eqz v1, :cond_0

    new-instance v2, Lorg/junit/internal/runners/statements/ExpectException;

    invoke-direct {v2, p3, v1}, Lorg/junit/internal/runners/statements/ExpectException;-><init>(Lorg/junit/runners/model/Statement;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    return-object v2
.end method

.method protected rules(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/rules/MethodRule;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;-><init>(Lorg/junit/runners/BlockJUnit4ClassRunner$1;)V

    .line 422
    .local v0, "collector":Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;, "Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector<Lorg/junit/rules/MethodRule;>;"
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    const-class v2, Lorg/junit/Rule;

    const-class v3, Lorg/junit/rules/MethodRule;

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/junit/runners/model/TestClass;->collectAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lorg/junit/runners/model/MemberValueConsumer;)V

    .line 424
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    const-class v2, Lorg/junit/Rule;

    const-class v3, Lorg/junit/rules/MethodRule;

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/junit/runners/model/TestClass;->collectAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lorg/junit/runners/model/MemberValueConsumer;)V

    .line 426
    iget-object v1, v0, Lorg/junit/runners/BlockJUnit4ClassRunner$RuleCollector;->result:Ljava/util/List;

    return-object v1
.end method

.method protected bridge synthetic runChild(Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/junit/runner/notification/RunNotifier;

    .line 63
    move-object v0, p1

    check-cast v0, Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {p0, v0, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;->runChild(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method

.method protected runChild(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 2
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 93
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->describeChild(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runner/Description;

    move-result-object v0

    .line 94
    .local v0, "description":Lorg/junit/runner/Description;
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->isIgnored(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p2, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestIgnored(Lorg/junit/runner/Description;)V

    goto :goto_0

    .line 97
    :cond_0
    new-instance v1, Lorg/junit/runners/BlockJUnit4ClassRunner$1;

    invoke-direct {v1, p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner$1;-><init>(Lorg/junit/runners/BlockJUnit4ClassRunner;Lorg/junit/runners/model/FrameworkMethod;)V

    .line 103
    .local v1, "statement":Lorg/junit/runners/model/Statement;
    invoke-virtual {p0, v1, v0, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;->runLeaf(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;Lorg/junit/runner/notification/RunNotifier;)V

    .line 105
    .end local v1    # "statement":Lorg/junit/runners/model/Statement;
    :goto_0
    return-void
.end method

.method protected testName(Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/String;
    .locals 1
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;

    .line 268
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateConstructor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateOnlyOneConstructor(Ljava/util/List;)V

    .line 180
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateZeroArgConstructor(Ljava/util/List;)V

    .line 181
    return-void
.end method

.method protected validateFields(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    .line 230
    return-void
.end method

.method protected validateInstanceMethods(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const-class v0, Lorg/junit/After;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 220
    const-class v0, Lorg/junit/Before;

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 221
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateTestMethods(Ljava/util/List;)V

    .line 223
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->computeTestMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No runnable methods"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    return-void
.end method

.method protected validateNoNonStaticInnerClass(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->isANonStaticInnerClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The inner class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v1}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not static."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "gripe":Ljava/lang/String;
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v0    # "gripe":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected validateOnlyOneConstructor(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 188
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->hasOneConstructor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "Test class should have exactly one public constructor"

    .line 190
    .local v0, "gripe":Ljava/lang/String;
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v0    # "gripe":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected validateTestMethods(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const-class v0, Lorg/junit/Test;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 242
    return-void
.end method

.method protected validateZeroArgConstructor(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->isANonStaticInnerClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->hasOneConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "Test class should have exactly one public zero-argument constructor"

    .line 203
    .local v0, "gripe":Ljava/lang/String;
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v0    # "gripe":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected withAfters(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 2
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "statement"    # Lorg/junit/runners/model/Statement;

    .line 390
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    const-class v1, Lorg/junit/After;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 392
    .local v0, "afters":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/junit/internal/runners/statements/RunAfters;

    invoke-direct {v1, p3, v0, p2}, Lorg/junit/internal/runners/statements/RunAfters;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method protected withBefores(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 2
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "statement"    # Lorg/junit/runners/model/Statement;

    .line 375
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    const-class v1, Lorg/junit/Before;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 377
    .local v0, "befores":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/junit/internal/runners/statements/RunBefores;

    invoke-direct {v1, p3, v0, p2}, Lorg/junit/internal/runners/statements/RunBefores;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method protected withPotentialTimeout(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 4
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "test"    # Ljava/lang/Object;
    .param p3, "next"    # Lorg/junit/runners/model/Statement;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    const-class v0, Lorg/junit/Test;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/Test;

    invoke-direct {p0, v0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTimeout(Lorg/junit/Test;)J

    move-result-wide v0

    .line 360
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 361
    return-object p3

    .line 363
    :cond_0
    invoke-static {}, Lorg/junit/internal/runners/statements/FailOnTimeout;->builder()Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->build(Lorg/junit/runners/model/Statement;)Lorg/junit/internal/runners/statements/FailOnTimeout;

    move-result-object v2

    return-object v2
.end method
