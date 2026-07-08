.class public final Landroidx/appcompat/view/menu/z62;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final m:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/w32;)V
    .locals 0

    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/z62;->m:Ljava/util/List;

    return-void
.end method
