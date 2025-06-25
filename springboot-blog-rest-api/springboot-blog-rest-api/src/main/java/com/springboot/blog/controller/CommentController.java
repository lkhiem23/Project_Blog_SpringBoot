package com.springboot.blog.controller;

import com.springboot.blog.payload.CommentDTO;
import com.springboot.blog.service.CommentService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/")
public class CommentController {
    private CommentService commentService;

    public CommentController(CommentService commentService) {
        this.commentService = commentService;
    }

    @PostMapping("/posts/{postId}/comments")
    public ResponseEntity<CommentDTO> createComment(@PathVariable (value = "postId") Long postId,
            @RequestBody CommentDTO commentDTO) {
        return  new ResponseEntity<>(commentService.createComment(postId,commentDTO), HttpStatus.CREATED);
    }

    @GetMapping("/posts/{postId}/comments")
    public List<CommentDTO> getCommentByPostId(@PathVariable (value = "postId") Long postId) {
        return commentService.getCommentByPostId(postId);
    }

    @GetMapping("/posts/{postId}/comments/{id}")
    public ResponseEntity<CommentDTO> getCommentById(@PathVariable (value = "postId") Long postId,
                                                     @PathVariable (value = "id") Long commentId) {
        CommentDTO commentDTO = commentService.getCommentById(commentId, postId);
        return new ResponseEntity<>(commentDTO, HttpStatus.OK);
    }

    @PutMapping("/posts/{postId}/comments/{id}")
    public ResponseEntity<CommentDTO> updateComment(@RequestBody CommentDTO commentDTO,
                                                    @PathVariable (value = "postId") Long postId,
                                                    @PathVariable (value = "commentId") Long commentId) {
        CommentDTO updateComment = commentService.updateComment(commentId, postId, commentDTO);
        return new ResponseEntity<>(updateComment, HttpStatus.OK);
    }

    @DeleteMapping("/posts/{postId}/comments/{id}")
    public ResponseEntity<String> deleteComment(@PathVariable (value = "commentId") Long commentId,
                                                    @PathVariable (value = "postId") Long postId) {
        commentService.deleteComment(commentId, postId);
        return new ResponseEntity<>("Comment Deleted successfully", HttpStatus.OK);

    }
}
