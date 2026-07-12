.class public final Landroidx/appcompat/view/menu/l81$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/h50;

.field public final b:Landroidx/appcompat/view/menu/h50;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/appcompat/view/menu/l81$d;->g(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/l81$a;->a:Landroidx/appcompat/view/menu/h50;

    .line 4
    invoke-static {p1}, Landroidx/appcompat/view/menu/l81$d;->f(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/l81$a;->b:Landroidx/appcompat/view/menu/h50;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/h50;Landroidx/appcompat/view/menu/h50;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/l81$a;->a:Landroidx/appcompat/view/menu/h50;

    iput-object p2, p0, Landroidx/appcompat/view/menu/l81$a;->b:Landroidx/appcompat/view/menu/h50;

    return-void
.end method

.method public static d(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/appcompat/view/menu/l81$a;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/l81$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l81$a;-><init>(Landroid/view/WindowInsetsAnimation$Bounds;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/h50;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$a;->a:Landroidx/appcompat/view/menu/h50;

    return-object v0
.end method

.method public b()Landroidx/appcompat/view/menu/h50;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$a;->b:Landroidx/appcompat/view/menu/h50;

    return-object v0
.end method

.method public c()Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/l81$d;->e(Landroidx/appcompat/view/menu/l81$a;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{lower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/l81$a;->a:Landroidx/appcompat/view/menu/h50;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/l81$a;->b:Landroidx/appcompat/view/menu/h50;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
