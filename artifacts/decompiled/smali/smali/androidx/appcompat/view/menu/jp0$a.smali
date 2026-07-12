.class public Landroidx/appcompat/view/menu/jp0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kd0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/jp0;->j([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Landroidx/appcompat/view/menu/jp0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/jp0;[B)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jp0$a;->b:Landroidx/appcompat/view/menu/jp0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/jp0$a;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " while sending restoration data to framework: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestorationChannel"

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/jp0$a;->b:Landroidx/appcompat/view/menu/jp0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/jp0$a;->a:[B

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/jp0;->b(Landroidx/appcompat/view/menu/jp0;[B)[B

    return-void
.end method
