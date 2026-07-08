.class public final Landroidx/appcompat/view/menu/nr0;
.super Landroidx/appcompat/view/menu/y51;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y51;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/nr0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nr0;->d:Ljava/util/Map;

    return-object v0
.end method
