.class public Landroidx/appcompat/view/menu/wu$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/wu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Landroidx/appcompat/view/menu/wu$b;


# direct methods
.method public constructor <init>(I[Landroidx/appcompat/view/menu/wu$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/wu$a;->a:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/wu$a;->b:[Landroidx/appcompat/view/menu/wu$b;

    return-void
.end method

.method public static a(I[Landroidx/appcompat/view/menu/wu$b;)Landroidx/appcompat/view/menu/wu$a;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/wu$a;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/wu$a;-><init>(I[Landroidx/appcompat/view/menu/wu$b;)V

    return-object v0
.end method


# virtual methods
.method public b()[Landroidx/appcompat/view/menu/wu$b;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/wu$a;->b:[Landroidx/appcompat/view/menu/wu$b;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/wu$a;->a:I

    return v0
.end method
