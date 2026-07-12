.class public Landroidx/appcompat/view/menu/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lio/flutter/view/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d0;->a:Lio/flutter/view/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lio/flutter/view/a;->J(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method public b(Lio/flutter/view/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d0;->a:Lio/flutter/view/a;

    return-void
.end method
