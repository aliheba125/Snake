.class public final Landroidx/appcompat/view/menu/dg1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroidx/appcompat/view/menu/lz1$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/dg1;->a:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroidx/appcompat/view/menu/lz1$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/dg1;->a:Ljava/util/EnumMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Landroidx/appcompat/view/menu/dg1;
    .locals 7

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroidx/appcompat/view/menu/lz1$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Landroidx/appcompat/view/menu/lz1$a;->values()[Landroidx/appcompat/view/menu/lz1$a;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/lz1$a;->values()[Landroidx/appcompat/view/menu/lz1$a;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v2, v1

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroidx/appcompat/view/menu/bg1;->e(C)Landroidx/appcompat/view/menu/bg1;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/appcompat/view/menu/dg1;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/dg1;-><init>(Ljava/util/EnumMap;)V

    return-object p0

    :cond_2
    :goto_1
    new-instance p0, Landroidx/appcompat/view/menu/dg1;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/dg1;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/lz1$a;)Landroidx/appcompat/view/menu/bg1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dg1;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/bg1;

    if-nez p1, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/bg1;->n:Landroidx/appcompat/view/menu/bg1;

    :cond_0
    return-object p1
.end method

.method public final c(Landroidx/appcompat/view/menu/lz1$a;I)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/bg1;->n:Landroidx/appcompat/view/menu/bg1;

    const/16 v1, -0x14

    if-eq p2, v1, :cond_2

    const/16 v1, -0xa

    if-eq p2, v1, :cond_1

    if-eqz p2, :cond_2

    const/16 v1, 0x1e

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/bg1;->r:Landroidx/appcompat/view/menu/bg1;

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/appcompat/view/menu/bg1;->q:Landroidx/appcompat/view/menu/bg1;

    goto :goto_0

    :cond_2
    sget-object v0, Landroidx/appcompat/view/menu/bg1;->s:Landroidx/appcompat/view/menu/bg1;

    :goto_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/dg1;->a:Ljava/util/EnumMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Landroidx/appcompat/view/menu/lz1$a;Landroidx/appcompat/view/menu/bg1;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dg1;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/lz1$a;->values()[Landroidx/appcompat/view/menu/lz1$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Landroidx/appcompat/view/menu/dg1;->a:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/bg1;

    if-nez v4, :cond_0

    sget-object v4, Landroidx/appcompat/view/menu/bg1;->n:Landroidx/appcompat/view/menu/bg1;

    :cond_0
    invoke-static {v4}, Landroidx/appcompat/view/menu/bg1;->c(Landroidx/appcompat/view/menu/bg1;)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
