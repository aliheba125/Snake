.class public final Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final m:J

.field public final n:Lio/flutter/embedding/engine/FlutterJNI;


# direct methods
.method public constructor <init>(JLio/flutter/embedding/engine/FlutterJNI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;->m:J

    iput-object p3, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;->n:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;->n:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Releasing a Texture ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterRenderer"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;->n:Lio/flutter/embedding/engine/FlutterJNI;

    iget-wide v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;->m:J

    invoke-virtual {v0, v1, v2}, Lio/flutter/embedding/engine/FlutterJNI;->unregisterTexture(J)V

    return-void
.end method
