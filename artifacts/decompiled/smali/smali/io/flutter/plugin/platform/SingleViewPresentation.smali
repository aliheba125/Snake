.class Lio/flutter/plugin/platform/SingleViewPresentation;
.super Landroid/app/Presentation;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/SingleViewPresentation$b;,
        Lio/flutter/plugin/platform/SingleViewPresentation$d;,
        Lio/flutter/plugin/platform/SingleViewPresentation$c;,
        Lio/flutter/plugin/platform/SingleViewPresentation$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformViewsController"


# instance fields
.field private final accessibilityEventsDelegate:Landroidx/appcompat/view/menu/d0;

.field private container:Landroid/widget/FrameLayout;

.field private final focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final outerContext:Landroid/content/Context;

.field private rootView:Lio/flutter/plugin/platform/SingleViewPresentation$a;

.field private startFocused:Z

.field private final state:Lio/flutter/plugin/platform/SingleViewPresentation$d;

.field private viewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroidx/appcompat/view/menu/d0;Lio/flutter/plugin/platform/SingleViewPresentation$d;Landroid/view/View$OnFocusChangeListener;Z)V
    .locals 1

    .line 7
    new-instance v0, Lio/flutter/plugin/platform/SingleViewPresentation$b;

    invoke-direct {v0, p1}, Lio/flutter/plugin/platform/SingleViewPresentation$b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->startFocused:Z

    iput-object p3, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->accessibilityEventsDelegate:Landroidx/appcompat/view/menu/d0;

    iput-object p4, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$d;

    iput-object p5, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iput-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->outerContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x8

    .line 9
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    iput-boolean p6, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->startFocused:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroidx/appcompat/view/menu/ri0;Landroidx/appcompat/view/menu/d0;ILandroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugin/platform/SingleViewPresentation$b;

    invoke-direct {v0, p1}, Lio/flutter/plugin/platform/SingleViewPresentation$b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->startFocused:Z

    iput-object p4, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->accessibilityEventsDelegate:Landroidx/appcompat/view/menu/d0;

    iput p5, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->viewId:I

    iput-object p6, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iput-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->outerContext:Landroid/content/Context;

    .line 2
    new-instance p1, Lio/flutter/plugin/platform/SingleViewPresentation$d;

    invoke-direct {p1}, Lio/flutter/plugin/platform/SingleViewPresentation$d;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$d;

    .line 3
    invoke-static {p1, p3}, Lio/flutter/plugin/platform/SingleViewPresentation$d;->b(Lio/flutter/plugin/platform/SingleViewPresentation$d;Landroidx/appcompat/view/menu/ri0;)Landroidx/appcompat/view/menu/ri0;

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x8

    .line 5
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7ee

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    return-void
.end method


# virtual methods
.method public detachState()Lio/flutter/plugin/platform/SingleViewPresentation$d;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->container:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$d;

    return-object v0
.end method

.method public getView()Landroidx/appcompat/view/menu/ri0;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$d;

    invoke-static {v0}, Lio/flutter/plugin/platform/SingleViewPresentation$d;->a(Lio/flutter/plugin/platform/SingleViewPresentation$d;)Landroidx/appcompat/view/menu/ri0;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$d;

    invoke-static {p1}, Lio/flutter/plugin/platform/SingleViewPresentation$d;->c(Lio/flutter/plugin/platform/SingleViewPresentation$d;)Landroidx/appcompat/view/menu/ou0;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$d;

    new-instance v0, Landroidx/appcompat/view/menu/ou0;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ou0;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lio/flutter/plugin/platform/SingleViewPresentation$d;->d(Lio/flutter/plugin/platform/SingleViewPresentation$d;Landroidx/appcompat/view/menu/ou0;)Landroidx/appcompat/view/menu/ou0;

    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$d;

    invoke-static {p1}, Lio/flutter/plugin/platform/SingleViewPresentation$d;->e(Lio/flutter/plugin/platform/SingleViewPresentation$d;)Landroidx/appcompat/view/menu/aa1;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$d;

    new-instance v1, Landroidx/appcompat/view/menu/aa1;

    invoke-static {v0}, Lio/flutter/plugin/platform/SingleViewPresentation$d;->c(Lio/flutter/plugin/platform/SingleViewPresentation$d;)Landroidx/appcompat/view/menu/ou0;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/view/menu/aa1;-><init>(Landroid/view/WindowManager;Landroidx/appcompat/view/menu/ou0;)V

    invoke-static {v0, v1}, Lio/flutter/plugin/platform/SingleViewPresentation$d;->f(Lio/flutter/plugin/platform/SingleViewPresentation$d;Landroidx/appcompat/view/menu/aa1;)Landroidx/appcompat/view/menu/aa1;

    :cond_1
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->container:Landroid/widget/FrameLayout;

    new-instance p1, Lio/flutter/plugin/platform/SingleViewPresentation$c;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$d;

    invoke-static {v1}, Lio/flutter/plugin/platform/SingleViewPresentation$d;->e(Lio/flutter/plugin/platform/SingleViewPresentation$d;)Landroidx/appcompat/view/menu/aa1;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->outerContext:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2}, Lio/flutter/plugin/platform/SingleViewPresentation$c;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/aa1;Landroid/content/Context;)V

    iget-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation;->state:Lio/flutter/plugin/platform/SingleViewPresentation$d;

    invoke-static {p1}, Lio/flutter/plugin/platform/SingleViewPresentation$d;->a(Lio/flutter/plugin/platform/SingleViewPresentation$d;)Landroidx/appcompat/view/menu/ri0;

    const/4 p1, 0x0

    throw p1
.end method
