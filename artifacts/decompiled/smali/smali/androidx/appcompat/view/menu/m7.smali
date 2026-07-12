.class public Landroidx/appcompat/view/menu/m7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/kd0;

.field public final b:Landroidx/appcompat/view/menu/kd0$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/si;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/m7$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/m7$a;-><init>(Landroidx/appcompat/view/menu/m7;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/m7;->b:Landroidx/appcompat/view/menu/kd0$c;

    new-instance v1, Landroidx/appcompat/view/menu/kd0;

    const-string v2, "flutter/backgesture"

    sget-object v3, Landroidx/appcompat/view/menu/qw0;->b:Landroidx/appcompat/view/menu/qw0;

    invoke-direct {v1, p1, v2, v3}, Landroidx/appcompat/view/menu/kd0;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/ld0;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/m7;->a:Landroidx/appcompat/view/menu/kd0;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/kd0;->e(Landroidx/appcompat/view/menu/kd0$c;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/window/BackEvent;)Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/i7;->a(Landroid/window/BackEvent;)F

    move-result v1

    invoke-static {p1}, Landroidx/appcompat/view/menu/j7;->a(Landroid/window/BackEvent;)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Float;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const-string v2, "touchOffset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroidx/appcompat/view/menu/k7;->a(Landroid/window/BackEvent;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "progress"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroidx/appcompat/view/menu/l7;->a(Landroid/window/BackEvent;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "swipeEdge"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b()V
    .locals 3

    const-string v0, "BackGestureChannel"

    const-string v1, "Sending message to cancel back gesture"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/m7;->a:Landroidx/appcompat/view/menu/kd0;

    const-string v1, "cancelBackGesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/kd0;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "BackGestureChannel"

    const-string v1, "Sending message to commit back gesture"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/m7;->a:Landroidx/appcompat/view/menu/kd0;

    const-string v1, "commitBackGesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/kd0;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "BackGestureChannel"

    const-string v1, "Sending message to start back gesture"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/m7;->a:Landroidx/appcompat/view/menu/kd0;

    const-string v1, "startBackGesture"

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/m7;->a(Landroid/window/BackEvent;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/kd0;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "BackGestureChannel"

    const-string v1, "Sending message to update back gesture progress"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/m7;->a:Landroidx/appcompat/view/menu/kd0;

    const-string v1, "updateBackGestureProgress"

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/m7;->a(Landroid/window/BackEvent;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/kd0;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
