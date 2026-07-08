.class public Landroidx/appcompat/view/menu/l71$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Landroidx/appcompat/view/menu/l71;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/l71;J)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/l71$c;->b:Landroidx/appcompat/view/menu/l71;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Landroidx/appcompat/view/menu/l71$c;->a:J

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/l71$c;J)J
    .locals 0

    iput-wide p1, p0, Landroidx/appcompat/view/menu/l71$c;->a:J

    return-wide p1
.end method


# virtual methods
.method public doFrame(J)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    move-wide v4, p1

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/l71$c;->b:Landroidx/appcompat/view/menu/l71;

    invoke-static {p1}, Landroidx/appcompat/view/menu/l71;->c(Landroidx/appcompat/view/menu/l71;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v3

    iget-object p1, p0, Landroidx/appcompat/view/menu/l71$c;->b:Landroidx/appcompat/view/menu/l71;

    invoke-static {p1}, Landroidx/appcompat/view/menu/l71;->a(Landroidx/appcompat/view/menu/l71;)J

    move-result-wide v6

    iget-wide v8, p0, Landroidx/appcompat/view/menu/l71$c;->a:J

    invoke-virtual/range {v3 .. v9}, Lio/flutter/embedding/engine/FlutterJNI;->onVsync(JJJ)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l71$c;->b:Landroidx/appcompat/view/menu/l71;

    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/l71;->e(Landroidx/appcompat/view/menu/l71;Landroidx/appcompat/view/menu/l71$c;)Landroidx/appcompat/view/menu/l71$c;

    return-void
.end method
