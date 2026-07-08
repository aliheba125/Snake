.class public Landroidx/appcompat/view/menu/bj0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/yi0$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/bj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/bj0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bj0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic j(Landroidx/appcompat/view/menu/bj0$a;Lio/flutter/plugin/platform/a;FLandroidx/appcompat/view/menu/yi0$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/bj0$a;->k(Lio/flutter/plugin/platform/a;FLandroidx/appcompat/view/menu/yi0$b;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/yi0$e;Landroidx/appcompat/view/menu/yi0$b;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    iget-wide v1, p1, Landroidx/appcompat/view/menu/yi0$e;->b:D

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/bj0;->h(Landroidx/appcompat/view/menu/bj0;D)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    iget-wide v2, p1, Landroidx/appcompat/view/menu/yi0$e;->c:D

    invoke-static {v1, v2, v3}, Landroidx/appcompat/view/menu/bj0;->h(Landroidx/appcompat/view/menu/bj0;D)I

    move-result v1

    iget p1, p1, Landroidx/appcompat/view/menu/yi0$e;->a:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/bj0;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v2}, Landroidx/appcompat/view/menu/bj0;->i(Landroidx/appcompat/view/menu/bj0;)F

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    iget-object v3, v3, Landroidx/appcompat/view/menu/bj0;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/a;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v3, p1}, Landroidx/appcompat/view/menu/bj0;->j(Landroidx/appcompat/view/menu/bj0;Lio/flutter/plugin/platform/a;)V

    new-instance v3, Landroidx/appcompat/view/menu/aj0;

    invoke-direct {v3, p0, p1, v2, p2}, Landroidx/appcompat/view/menu/aj0;-><init>(Landroidx/appcompat/view/menu/bj0$a;Lio/flutter/plugin/platform/a;FLandroidx/appcompat/view/menu/yi0$b;)V

    invoke-virtual {p1, v0, v1, v3}, Lio/flutter/plugin/platform/a;->i(IILjava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {p2}, Landroidx/appcompat/view/menu/bj0;->t(Landroidx/appcompat/view/menu/bj0;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {p2}, Landroidx/appcompat/view/menu/bj0;->q(Landroidx/appcompat/view/menu/bj0;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/vi0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resizing unknown platform view with id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlatformViewsController"

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/bj0;->m(Landroidx/appcompat/view/menu/bj0;Z)Z

    return-void
.end method

.method public c(IDD)V
    .locals 0

    iget-object p2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/bj0;->b(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {p2}, Landroidx/appcompat/view/menu/bj0;->q(Landroidx/appcompat/view/menu/bj0;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/vi0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Setting offset for unknown platform view with id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlatformViewsController"

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(II)V
    .locals 3

    invoke-static {p2}, Landroidx/appcompat/view/menu/bj0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/bj0;->b(I)Z

    move-result v0

    const-string v1, "PlatformViewsController"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    iget-object v0, v0, Landroidx/appcompat/view/menu/bj0;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/a;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/a;->e()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting direction to a null view with id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutDirection(I)V

    return-void

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {p2}, Landroidx/appcompat/view/menu/bj0;->t(Landroidx/appcompat/view/menu/bj0;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting direction to an unknown view with id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "(view id: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Landroidx/appcompat/view/menu/yi0$f;)V
    .locals 4

    iget v0, p1, Landroidx/appcompat/view/menu/yi0$f;->a:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/bj0;->k(Landroidx/appcompat/view/menu/bj0;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/bj0;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    iget-object v2, v2, Landroidx/appcompat/view/menu/bj0;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/a;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3}, Landroidx/appcompat/view/menu/bj0;->h0(FLandroidx/appcompat/view/menu/yi0$f;Z)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/a;->b(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/bj0;->t(Landroidx/appcompat/view/menu/bj0;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending touch to an unknown view with id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlatformViewsController"

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Landroidx/appcompat/view/menu/yi0$d;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/bj0;->f(Landroidx/appcompat/view/menu/bj0;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/bj0;->g(Landroidx/appcompat/view/menu/bj0;Landroidx/appcompat/view/menu/yi0$d;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/bj0;->C(Landroidx/appcompat/view/menu/yi0$d;Z)Landroidx/appcompat/view/menu/ri0;

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v1, v0, p1}, Landroidx/appcompat/view/menu/bj0;->p(Landroidx/appcompat/view/menu/bj0;Landroidx/appcompat/view/menu/ri0;Landroidx/appcompat/view/menu/yi0$d;)V

    return-void
.end method

.method public g(Landroidx/appcompat/view/menu/yi0$d;)J
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/bj0;->g(Landroidx/appcompat/view/menu/bj0;Landroidx/appcompat/view/menu/yi0$d;)V

    iget v0, p1, Landroidx/appcompat/view/menu/yi0$d;->a:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/bj0;->q(Landroidx/appcompat/view/menu/bj0;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/bj0;->r(Landroidx/appcompat/view/menu/bj0;)Lio/flutter/view/TextureRegistry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/bj0;->s(Landroidx/appcompat/view/menu/bj0;)Landroidx/appcompat/view/menu/nu;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flutter view is null. This means the platform views controller doesn\'t have an attached view, view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/bj0;->C(Landroidx/appcompat/view/menu/yi0$d;Z)Landroidx/appcompat/view/menu/ri0;

    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture registry is null. This means that platform views controller was detached, view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create an already created platform view, view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(I)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/bj0;->b(I)Z

    move-result v0

    const-string v1, "PlatformViewsController"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    iget-object v0, v0, Landroidx/appcompat/view/menu/bj0;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/a;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/a;->e()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing focus on a null view with id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/bj0;->t(Landroidx/appcompat/view/menu/bj0;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing focus on an unknown view with id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/bj0;->t(Landroidx/appcompat/view/menu/bj0;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing unknown platform view with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlatformViewsController"

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic k(Lio/flutter/plugin/platform/a;FLandroidx/appcompat/view/menu/yi0$b;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/bj0;->n(Landroidx/appcompat/view/menu/bj0;Lio/flutter/plugin/platform/a;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/bj0;->k(Landroidx/appcompat/view/menu/bj0;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-static {p2}, Landroidx/appcompat/view/menu/bj0;->i(Landroidx/appcompat/view/menu/bj0;)F

    move-result p2

    :goto_0
    new-instance v0, Landroidx/appcompat/view/menu/yi0$c;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-virtual {p1}, Lio/flutter/plugin/platform/a;->d()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v1, v2, v3, p2}, Landroidx/appcompat/view/menu/bj0;->o(Landroidx/appcompat/view/menu/bj0;DF)I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/bj0$a;->a:Landroidx/appcompat/view/menu/bj0;

    invoke-virtual {p1}, Lio/flutter/plugin/platform/a;->c()I

    move-result p1

    int-to-double v3, p1

    invoke-static {v2, v3, v4, p2}, Landroidx/appcompat/view/menu/bj0;->o(Landroidx/appcompat/view/menu/bj0;DF)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/yi0$c;-><init>(II)V

    invoke-interface {p3, v0}, Landroidx/appcompat/view/menu/yi0$b;->a(Landroidx/appcompat/view/menu/yi0$c;)V

    return-void
.end method
