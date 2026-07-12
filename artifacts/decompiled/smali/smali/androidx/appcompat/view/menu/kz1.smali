.class public final enum Landroidx/appcompat/view/menu/kz1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/kz1;

.field public static final enum o:Landroidx/appcompat/view/menu/kz1;

.field public static final synthetic p:[Landroidx/appcompat/view/menu/kz1;


# instance fields
.field public final m:[Landroidx/appcompat/view/menu/lz1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/appcompat/view/menu/kz1;

    sget-object v1, Landroidx/appcompat/view/menu/lz1$a;->n:Landroidx/appcompat/view/menu/lz1$a;

    sget-object v2, Landroidx/appcompat/view/menu/lz1$a;->o:Landroidx/appcompat/view/menu/lz1$a;

    filled-new-array {v1, v2}, [Landroidx/appcompat/view/menu/lz1$a;

    move-result-object v1

    const-string v2, "STORAGE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroidx/appcompat/view/menu/kz1;-><init>(Ljava/lang/String;I[Landroidx/appcompat/view/menu/lz1$a;)V

    sput-object v0, Landroidx/appcompat/view/menu/kz1;->n:Landroidx/appcompat/view/menu/kz1;

    new-instance v1, Landroidx/appcompat/view/menu/kz1;

    sget-object v2, Landroidx/appcompat/view/menu/lz1$a;->p:Landroidx/appcompat/view/menu/lz1$a;

    filled-new-array {v2}, [Landroidx/appcompat/view/menu/lz1$a;

    move-result-object v2

    const-string v3, "DMA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Landroidx/appcompat/view/menu/kz1;-><init>(Ljava/lang/String;I[Landroidx/appcompat/view/menu/lz1$a;)V

    sput-object v1, Landroidx/appcompat/view/menu/kz1;->o:Landroidx/appcompat/view/menu/kz1;

    filled-new-array {v0, v1}, [Landroidx/appcompat/view/menu/kz1;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/kz1;->p:[Landroidx/appcompat/view/menu/kz1;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;I[Landroidx/appcompat/view/menu/lz1$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/kz1;->m:[Landroidx/appcompat/view/menu/lz1$a;

    return-void
.end method

.method public static bridge synthetic e(Landroidx/appcompat/view/menu/kz1;)[Landroidx/appcompat/view/menu/lz1$a;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/kz1;->m:[Landroidx/appcompat/view/menu/lz1$a;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/kz1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/kz1;->p:[Landroidx/appcompat/view/menu/kz1;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/kz1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/kz1;

    return-object v0
.end method


# virtual methods
.method public final c()[Landroidx/appcompat/view/menu/lz1$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/kz1;->m:[Landroidx/appcompat/view/menu/lz1$a;

    return-object v0
.end method
