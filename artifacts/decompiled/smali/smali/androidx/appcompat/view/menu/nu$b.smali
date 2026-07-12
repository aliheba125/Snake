.class public Landroidx/appcompat/view/menu/nu$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/nu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/nu;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/nu;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu$b;->a:Landroidx/appcompat/view/menu/nu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/nu$b;->a:Landroidx/appcompat/view/menu/nu;

    invoke-static {p1}, Landroidx/appcompat/view/menu/nu;->f(Landroidx/appcompat/view/menu/nu;)Lio/flutter/embedding/engine/a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "FlutterView"

    const-string v0, "System settings changed. Sending user settings to Flutter."

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/nu$b;->a:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/nu;->B()V

    return-void
.end method
