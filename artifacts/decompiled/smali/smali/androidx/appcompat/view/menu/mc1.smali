.class public final Landroidx/appcompat/view/menu/mc1;
.super Landroidx/appcompat/view/menu/ec1;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/zx$a;
.implements Landroidx/appcompat/view/menu/zx$b;


# static fields
.field public static final s:Landroidx/appcompat/view/menu/m2$a;


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:Landroid/os/Handler;

.field public final n:Landroidx/appcompat/view/menu/m2$a;

.field public final o:Ljava/util/Set;

.field public final p:Landroidx/appcompat/view/menu/ac;

.field public q:Landroidx/appcompat/view/menu/uc1;

.field public r:Landroidx/appcompat/view/menu/lc1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/rc1;->c:Landroidx/appcompat/view/menu/m2$a;

    sput-object v0, Landroidx/appcompat/view/menu/mc1;->s:Landroidx/appcompat/view/menu/m2$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/appcompat/view/menu/ac;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/mc1;->s:Landroidx/appcompat/view/menu/m2$a;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ec1;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc1;->l:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/mc1;->m:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ac;

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc1;->p:Landroidx/appcompat/view/menu/ac;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/ac;->e()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc1;->o:Ljava/util/Set;

    iput-object v0, p0, Landroidx/appcompat/view/menu/mc1;->n:Landroidx/appcompat/view/menu/m2$a;

    return-void
.end method

.method public static bridge synthetic v2(Landroidx/appcompat/view/menu/mc1;)Landroidx/appcompat/view/menu/lc1;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/mc1;->r:Landroidx/appcompat/view/menu/lc1;

    return-object p0
.end method

.method public static bridge synthetic w2(Landroidx/appcompat/view/menu/mc1;Landroidx/appcompat/view/menu/ld1;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ld1;->d()Landroidx/appcompat/view/menu/ef;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ef;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ld1;->f()Landroidx/appcompat/view/menu/ce1;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ce1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ce1;->d()Landroidx/appcompat/view/menu/ef;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ef;->n()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Landroidx/appcompat/view/menu/mc1;->r:Landroidx/appcompat/view/menu/lc1;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/lc1;->c(Landroidx/appcompat/view/menu/ef;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/mc1;->q:Landroidx/appcompat/view/menu/uc1;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/m2$f;->n()V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mc1;->r:Landroidx/appcompat/view/menu/lc1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ce1;->f()Landroidx/appcompat/view/menu/mz;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/mc1;->o:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/lc1;->b(Landroidx/appcompat/view/menu/mz;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/mc1;->r:Landroidx/appcompat/view/menu/lc1;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/lc1;->c(Landroidx/appcompat/view/menu/ef;)V

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/mc1;->q:Landroidx/appcompat/view/menu/uc1;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/m2$f;->n()V

    return-void
.end method


# virtual methods
.method public final h(I)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/mc1;->q:Landroidx/appcompat/view/menu/uc1;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/m2$f;->n()V

    return-void
.end method

.method public final j(Landroidx/appcompat/view/menu/ef;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc1;->r:Landroidx/appcompat/view/menu/lc1;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/lc1;->c(Landroidx/appcompat/view/menu/ef;)V

    return-void
.end method

.method public final k(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/mc1;->q:Landroidx/appcompat/view/menu/uc1;

    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/uc1;->i(Landroidx/appcompat/view/menu/vc1;)V

    return-void
.end method

.method public final v(Landroidx/appcompat/view/menu/ld1;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc1;->m:Landroid/os/Handler;

    new-instance v1, Landroidx/appcompat/view/menu/kc1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/kc1;-><init>(Landroidx/appcompat/view/menu/mc1;Landroidx/appcompat/view/menu/ld1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final x2(Landroidx/appcompat/view/menu/lc1;)V
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc1;->q:Landroidx/appcompat/view/menu/uc1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/m2$f;->n()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mc1;->p:Landroidx/appcompat/view/menu/ac;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ac;->i(Ljava/lang/Integer;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/mc1;->n:Landroidx/appcompat/view/menu/m2$a;

    iget-object v3, p0, Landroidx/appcompat/view/menu/mc1;->l:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc1;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Landroidx/appcompat/view/menu/mc1;->p:Landroidx/appcompat/view/menu/ac;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ac;->f()Landroidx/appcompat/view/menu/lu0;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/view/menu/m2$a;->b(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/ac;Ljava/lang/Object;Landroidx/appcompat/view/menu/zx$a;Landroidx/appcompat/view/menu/zx$b;)Landroidx/appcompat/view/menu/m2$f;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/mc1;->q:Landroidx/appcompat/view/menu/uc1;

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc1;->r:Landroidx/appcompat/view/menu/lc1;

    iget-object p1, p0, Landroidx/appcompat/view/menu/mc1;->o:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/mc1;->q:Landroidx/appcompat/view/menu/uc1;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/uc1;->p()V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/mc1;->m:Landroid/os/Handler;

    new-instance v0, Landroidx/appcompat/view/menu/jc1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/jc1;-><init>(Landroidx/appcompat/view/menu/mc1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final y2()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc1;->q:Landroidx/appcompat/view/menu/uc1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/m2$f;->n()V

    :cond_0
    return-void
.end method
