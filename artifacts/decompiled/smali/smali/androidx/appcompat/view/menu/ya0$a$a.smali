.class public final enum Landroidx/appcompat/view/menu/ya0$a$a;
.super Landroidx/appcompat/view/menu/ya0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ya0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ya0$a;-><init>(Ljava/lang/String;ILandroidx/appcompat/view/menu/xa0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ya0$a$a;->e(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
