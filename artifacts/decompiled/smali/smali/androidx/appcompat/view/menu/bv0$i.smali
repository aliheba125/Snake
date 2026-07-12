.class public final Landroidx/appcompat/view/menu/bv0$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/bv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0$i;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/cv0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/bv0$i;-><init>()V

    return-void
.end method
