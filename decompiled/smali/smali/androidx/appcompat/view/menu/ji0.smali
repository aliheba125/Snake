.class public Landroidx/appcompat/view/menu/ji0;
.super Landroidx/appcompat/view/menu/ot;
.source "SourceFile"


# instance fields
.field public g:Landroidx/appcompat/view/menu/d0;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroidx/appcompat/view/menu/d0;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ot$b;->n:Landroidx/appcompat/view/menu/ot$b;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/view/menu/ot;-><init>(Landroid/content/Context;IILandroidx/appcompat/view/menu/ot$b;)V

    iput-object p4, p0, Landroidx/appcompat/view/menu/ji0;->g:Landroidx/appcompat/view/menu/d0;

    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ji0;->g:Landroidx/appcompat/view/menu/d0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/d0;->a(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
