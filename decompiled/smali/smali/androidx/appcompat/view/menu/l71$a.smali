.class public Landroidx/appcompat/view/menu/l71$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/FlutterJNI$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/l71;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/l71;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/l71$a;->a:Landroidx/appcompat/view/menu/l71;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/l71$a;->b(J)Landroid/view/Choreographer$FrameCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final b(J)Landroid/view/Choreographer$FrameCallback;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l71$a;->a:Landroidx/appcompat/view/menu/l71;

    invoke-static {v0}, Landroidx/appcompat/view/menu/l71;->d(Landroidx/appcompat/view/menu/l71;)Landroidx/appcompat/view/menu/l71$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/l71$a;->a:Landroidx/appcompat/view/menu/l71;

    invoke-static {v0}, Landroidx/appcompat/view/menu/l71;->d(Landroidx/appcompat/view/menu/l71;)Landroidx/appcompat/view/menu/l71$c;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/appcompat/view/menu/l71$c;->a(Landroidx/appcompat/view/menu/l71$c;J)J

    iget-object p1, p0, Landroidx/appcompat/view/menu/l71$a;->a:Landroidx/appcompat/view/menu/l71;

    invoke-static {p1}, Landroidx/appcompat/view/menu/l71;->d(Landroidx/appcompat/view/menu/l71;)Landroidx/appcompat/view/menu/l71$c;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/l71$a;->a:Landroidx/appcompat/view/menu/l71;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/l71;->e(Landroidx/appcompat/view/menu/l71;Landroidx/appcompat/view/menu/l71$c;)Landroidx/appcompat/view/menu/l71$c;

    return-object p1

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/l71$c;

    iget-object v1, p0, Landroidx/appcompat/view/menu/l71$a;->a:Landroidx/appcompat/view/menu/l71;

    invoke-direct {v0, v1, p1, p2}, Landroidx/appcompat/view/menu/l71$c;-><init>(Landroidx/appcompat/view/menu/l71;J)V

    return-object v0
.end method
