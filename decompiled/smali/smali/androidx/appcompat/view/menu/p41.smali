.class public Landroidx/appcompat/view/menu/p41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/b1;

.field public final b:Landroidx/appcompat/view/menu/r1;

.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/b1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/b1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/p41;->a:Landroidx/appcompat/view/menu/b1;

    new-instance v0, Landroidx/appcompat/view/menu/r1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/p41;->b:Landroidx/appcompat/view/menu/r1;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/p41;->c:Ljava/util/Map;

    return-void
.end method
