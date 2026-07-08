.class public Landroidx/appcompat/view/menu/ur0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ur0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/ec;

.field public b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ur0$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/tj0;Landroidx/appcompat/view/menu/ur0$b;)Landroidx/appcompat/view/menu/ur0$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ur0$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b()Landroidx/appcompat/view/menu/ur0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ur0$a;->a:Landroidx/appcompat/view/menu/ec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ur0$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/tj0;->values()[Landroidx/appcompat/view/menu/tj0;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ur0$a;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/ur0$a;->b:Ljava/util/Map;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ur0$a;->a:Landroidx/appcompat/view/menu/ec;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ur0;->d(Landroidx/appcompat/view/menu/ec;Ljava/util/Map;)Landroidx/appcompat/view/menu/ur0;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not all priorities have been configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "missing required property: clock"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Landroidx/appcompat/view/menu/ec;)Landroidx/appcompat/view/menu/ur0$a;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ur0$a;->a:Landroidx/appcompat/view/menu/ec;

    return-object p0
.end method
