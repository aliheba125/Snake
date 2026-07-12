.class public Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/uj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/flutter/embedding/engine/renderer/FlutterRenderer;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;->a:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroidx/appcompat/view/menu/a90;)V
    .locals 1

    const-string p1, "FlutterRenderer"

    const-string v0, "onResume called; notifying SurfaceProducers"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$b;->a:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-static {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->b(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;

    invoke-static {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->access$200(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;)Lio/flutter/view/TextureRegistry$SurfaceProducer$a;

    goto :goto_0

    :cond_0
    return-void
.end method
