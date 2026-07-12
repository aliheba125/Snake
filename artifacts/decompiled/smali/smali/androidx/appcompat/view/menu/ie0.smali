.class public final Landroidx/appcompat/view/menu/ie0;
.super Landroidx/appcompat/view/menu/gi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/appcompat/view/menu/ie0;-><init>(Landroidx/appcompat/view/menu/gi;ILandroidx/appcompat/view/menu/lj;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/gi;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/gi;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gi;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gi;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/gi;ILandroidx/appcompat/view/menu/lj;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    sget-object p1, Landroidx/appcompat/view/menu/gi$a;->b:Landroidx/appcompat/view/menu/gi$a;

    :cond_0
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/ie0;-><init>(Landroidx/appcompat/view/menu/gi;)V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/gi$b;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gi;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
