.class public final Landroidx/appcompat/view/menu/hb1;
.super Landroidx/appcompat/view/menu/yd1;
.source "SourceFile"


# instance fields
.field public final f:Landroidx/appcompat/view/menu/q4;

.field public final g:Landroidx/appcompat/view/menu/ay;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/y80;Landroidx/appcompat/view/menu/ay;Landroidx/appcompat/view/menu/xx;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Landroidx/appcompat/view/menu/yd1;-><init>(Landroidx/appcompat/view/menu/y80;Landroidx/appcompat/view/menu/xx;)V

    new-instance p1, Landroidx/appcompat/view/menu/q4;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/q4;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/hb1;->f:Landroidx/appcompat/view/menu/q4;

    iput-object p2, p0, Landroidx/appcompat/view/menu/hb1;->g:Landroidx/appcompat/view/menu/ay;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Landroidx/appcompat/view/menu/y80;

    const-string p2, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, p2, p0}, Landroidx/appcompat/view/menu/y80;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static u(Landroid/app/Activity;Landroidx/appcompat/view/menu/ay;Landroidx/appcompat/view/menu/r2;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/app/Activity;)Landroidx/appcompat/view/menu/y80;

    move-result-object p0

    const-string v0, "ConnectionlessLifecycleHelper"

    const-class v1, Landroidx/appcompat/view/menu/hb1;

    invoke-interface {p0, v0, v1}, Landroidx/appcompat/view/menu/y80;->d(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/hb1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/hb1;

    invoke-static {}, Landroidx/appcompat/view/menu/xx;->m()Landroidx/appcompat/view/menu/xx;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroidx/appcompat/view/menu/hb1;-><init>(Landroidx/appcompat/view/menu/y80;Landroidx/appcompat/view/menu/ay;Landroidx/appcompat/view/menu/xx;)V

    :cond_0
    const-string p0, "ApiKey cannot be null"

    invoke-static {p2, p0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Landroidx/appcompat/view/menu/hb1;->f:Landroidx/appcompat/view/menu/q4;

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/q4;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ay;->c(Landroidx/appcompat/view/menu/hb1;)V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->h()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hb1;->v()V

    return-void
.end method

.method public final j()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/yd1;->j()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/hb1;->v()V

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/yd1;->k()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/hb1;->g:Landroidx/appcompat/view/menu/ay;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/ay;->d(Landroidx/appcompat/view/menu/hb1;)V

    return-void
.end method

.method public final m(Landroidx/appcompat/view/menu/ef;I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/hb1;->g:Landroidx/appcompat/view/menu/ay;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/ay;->F(Landroidx/appcompat/view/menu/ef;I)V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/hb1;->g:Landroidx/appcompat/view/menu/ay;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ay;->a()V

    return-void
.end method

.method public final t()Landroidx/appcompat/view/menu/q4;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/hb1;->f:Landroidx/appcompat/view/menu/q4;

    return-object v0
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/hb1;->f:Landroidx/appcompat/view/menu/q4;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q4;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/hb1;->g:Landroidx/appcompat/view/menu/ay;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/ay;->c(Landroidx/appcompat/view/menu/hb1;)V

    :cond_0
    return-void
.end method
