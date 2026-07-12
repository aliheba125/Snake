.class public final Landroidx/appcompat/view/menu/jc0$a;
.super Landroidx/appcompat/view/menu/jc0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/jc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/adservices/measurement/MeasurementManager;


# direct methods
.method public constructor <init>(Landroid/adservices/measurement/MeasurementManager;)V
    .locals 1

    const-string v0, "mMeasurementManager"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/jc0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jc0$a;->b:Landroid/adservices/measurement/MeasurementManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroidx/appcompat/view/menu/hc0;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getSystemService\u2026:class.java\n            )"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/yb0;->a(Ljava/lang/Object;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/jc0$a;-><init>(Landroid/adservices/measurement/MeasurementManager;)V

    return-void
.end method

.method public static final synthetic g(Landroidx/appcompat/view/menu/jc0$a;Landroidx/appcompat/view/menu/hl;)Landroid/adservices/measurement/DeletionRequest;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jc0$a;->k(Landroidx/appcompat/view/menu/hl;)Landroid/adservices/measurement/DeletionRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Landroidx/appcompat/view/menu/jc0$a;Landroidx/appcompat/view/menu/t71;)Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jc0$a;->l(Landroidx/appcompat/view/menu/t71;)Landroid/adservices/measurement/WebSourceRegistrationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Landroidx/appcompat/view/menu/jc0$a;Landroidx/appcompat/view/menu/u71;)Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jc0$a;->m(Landroidx/appcompat/view/menu/u71;)Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Landroidx/appcompat/view/menu/jc0$a;)Landroid/adservices/measurement/MeasurementManager;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/jc0$a;->b:Landroid/adservices/measurement/MeasurementManager;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/hl;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/view/menu/hl;",
            "Landroidx/appcompat/view/menu/xg;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/appcompat/view/menu/y9;

    invoke-static {p2}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/y9;-><init>(Landroidx/appcompat/view/menu/xg;I)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->z()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/jc0$a;->j(Landroidx/appcompat/view/menu/jc0$a;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object v1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/jc0$a;->g(Landroidx/appcompat/view/menu/jc0$a;Landroidx/appcompat/view/menu/hl;)Landroid/adservices/measurement/DeletionRequest;

    move-result-object p1

    new-instance v2, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    invoke-static {v0}, Landroidx/appcompat/view/menu/yg0;->a(Landroidx/appcompat/view/menu/xg;)Landroid/os/OutcomeReceiver;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Landroidx/appcompat/view/menu/gc0;->a(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/DeletionRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->w()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Landroidx/appcompat/view/menu/gj;->c(Landroidx/appcompat/view/menu/xg;)V

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public b(Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/view/menu/xg;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/appcompat/view/menu/y9;

    invoke-static {p1}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/y9;-><init>(Landroidx/appcompat/view/menu/xg;I)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->z()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/jc0$a;->j(Landroidx/appcompat/view/menu/jc0$a;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    invoke-static {v0}, Landroidx/appcompat/view/menu/yg0;->a(Landroidx/appcompat/view/menu/xg;)Landroid/os/OutcomeReceiver;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/appcompat/view/menu/bc0;->a(Landroid/adservices/measurement/MeasurementManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->w()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/gj;->c(Landroidx/appcompat/view/menu/xg;)V

    :cond_0
    return-object v0
.end method

.method public c(Landroid/net/Uri;Landroid/view/InputEvent;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Landroidx/appcompat/view/menu/xg;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/appcompat/view/menu/y9;

    invoke-static {p3}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/y9;-><init>(Landroidx/appcompat/view/menu/xg;I)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->z()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/jc0$a;->j(Landroidx/appcompat/view/menu/jc0$a;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    invoke-static {v0}, Landroidx/appcompat/view/menu/yg0;->a(Landroidx/appcompat/view/menu/xg;)Landroid/os/OutcomeReceiver;

    move-result-object v3

    invoke-static {v1, p1, p2, v2, v3}, Landroidx/appcompat/view/menu/fc0;->a(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->w()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Landroidx/appcompat/view/menu/gj;->c(Landroidx/appcompat/view/menu/xg;)V

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public d(Landroid/net/Uri;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroidx/appcompat/view/menu/xg;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/appcompat/view/menu/y9;

    invoke-static {p2}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/y9;-><init>(Landroidx/appcompat/view/menu/xg;I)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->z()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/jc0$a;->j(Landroidx/appcompat/view/menu/jc0$a;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    invoke-static {v0}, Landroidx/appcompat/view/menu/yg0;->a(Landroidx/appcompat/view/menu/xg;)Landroid/os/OutcomeReceiver;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Landroidx/appcompat/view/menu/cc0;->a(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->w()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Landroidx/appcompat/view/menu/gj;->c(Landroidx/appcompat/view/menu/xg;)V

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public e(Landroidx/appcompat/view/menu/t71;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/view/menu/t71;",
            "Landroidx/appcompat/view/menu/xg;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/appcompat/view/menu/y9;

    invoke-static {p2}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/y9;-><init>(Landroidx/appcompat/view/menu/xg;I)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->z()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/jc0$a;->j(Landroidx/appcompat/view/menu/jc0$a;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object v1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/jc0$a;->h(Landroidx/appcompat/view/menu/jc0$a;Landroidx/appcompat/view/menu/t71;)Landroid/adservices/measurement/WebSourceRegistrationRequest;

    move-result-object p1

    new-instance v2, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    invoke-static {v0}, Landroidx/appcompat/view/menu/yg0;->a(Landroidx/appcompat/view/menu/xg;)Landroid/os/OutcomeReceiver;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Landroidx/appcompat/view/menu/ec0;->a(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/WebSourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->w()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Landroidx/appcompat/view/menu/gj;->c(Landroidx/appcompat/view/menu/xg;)V

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public f(Landroidx/appcompat/view/menu/u71;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/view/menu/u71;",
            "Landroidx/appcompat/view/menu/xg;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/appcompat/view/menu/y9;

    invoke-static {p2}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/y9;-><init>(Landroidx/appcompat/view/menu/xg;I)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->z()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/jc0$a;->j(Landroidx/appcompat/view/menu/jc0$a;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object v1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/jc0$a;->i(Landroidx/appcompat/view/menu/jc0$a;Landroidx/appcompat/view/menu/u71;)Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    move-result-object p1

    new-instance v2, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    invoke-static {v0}, Landroidx/appcompat/view/menu/yg0;->a(Landroidx/appcompat/view/menu/xg;)Landroid/os/OutcomeReceiver;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Landroidx/appcompat/view/menu/dc0;->a(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/WebTriggerRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->w()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Landroidx/appcompat/view/menu/gj;->c(Landroidx/appcompat/view/menu/xg;)V

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public final k(Landroidx/appcompat/view/menu/hl;)Landroid/adservices/measurement/DeletionRequest;
    .locals 0

    invoke-static {}, Landroidx/appcompat/view/menu/ac0;->a()Landroid/adservices/measurement/DeletionRequest$Builder;

    const/4 p1, 0x0

    throw p1
.end method

.method public final l(Landroidx/appcompat/view/menu/t71;)Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .locals 0

    invoke-static {}, Landroidx/appcompat/view/menu/xb0;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final m(Landroidx/appcompat/view/menu/u71;)Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    .locals 0

    invoke-static {}, Landroidx/appcompat/view/menu/zb0;->a()V

    const/4 p1, 0x0

    throw p1
.end method
