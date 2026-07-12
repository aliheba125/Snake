.class public Lio/flutter/view/a$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/flutter/view/a;


# direct methods
.method public constructor <init>(Lio/flutter/view/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/a$c;->a:Lio/flutter/view/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/flutter/view/a$c;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p1, p0, Lio/flutter/view/a$c;->a:Lio/flutter/view/a;

    .line 2
    invoke-static {p1}, Lio/flutter/view/a;->i(Lio/flutter/view/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/flutter/view/a$c;->a:Lio/flutter/view/a;

    .line 3
    invoke-static {p1}, Lio/flutter/view/a;->d(Lio/flutter/view/a;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "transition_animation_scale"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/flutter/view/a$c;->a:Lio/flutter/view/a;

    .line 5
    sget-object p2, Lio/flutter/view/a$f;->p:Lio/flutter/view/a$f;

    iget p2, p2, Lio/flutter/view/a$f;->m:I

    invoke-static {p1, p2}, Lio/flutter/view/a;->f(Lio/flutter/view/a;I)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/flutter/view/a$c;->a:Lio/flutter/view/a;

    .line 6
    sget-object p2, Lio/flutter/view/a$f;->p:Lio/flutter/view/a$f;

    iget p2, p2, Lio/flutter/view/a$f;->m:I

    not-int p2, p2

    invoke-static {p1, p2}, Lio/flutter/view/a;->e(Lio/flutter/view/a;I)I

    :goto_0
    iget-object p1, p0, Lio/flutter/view/a$c;->a:Lio/flutter/view/a;

    .line 7
    invoke-static {p1}, Lio/flutter/view/a;->g(Lio/flutter/view/a;)V

    return-void
.end method
